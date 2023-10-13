package com.example.choyoujin.service;

import com.example.choyoujin.dao.CouponDao;
import com.example.choyoujin.dto.CouponDto;
import com.example.choyoujin.dto.PostDto;
import com.example.choyoujin.dto.ProductDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class CouponService {

    @Autowired
    private CouponDao couponDao;
    @Autowired
    private UserService userService;
    @Autowired
    private TravelProductServiceImpl productService;

    /** 쿠폰 등록하기 */
    public void saveCoupon(CouponDto couponDto) {
        try {
            couponDto.setUserId(userService.getUserData().getId()); // 생성자 Set
            // 만약 상품 '전체'를 선택했다면
            if (couponDto.getProductIds().contains(0)) {
                List<Integer> productIds = productService.findAllProductIdsByCountryId(couponDto.getCountryId()); // 나라별 여행 상품 가져오기
                couponDto.setProductIds(productIds); // 여행 상품 Set
                couponDto.setCode(String.valueOf(UUID.randomUUID()));
            }
            couponDao.saveCoupon(couponDto);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    /** 관리자 '나의 쿠폰' - 관리자가 등록한 쿠폰 리스트 가져오기 */
    public List<CouponDto> findAllByUserId() {
        return couponDao.findAllByUserId(userService.getUserData().getId());
    }

    /** 쿠폰 아이디로 쿠폰 데이터 가져오기 */
    public CouponDto findOneByCouponId(int couponId) {
        return couponDao.findOneByCouponId(couponId);
    }

    /** 쿠폰 수정 */
    public void updateCoupon(CouponDto couponDto) {
        couponDao.updateCoupon(couponDto);
    }

    /** 쿠폰 삭제 */
    public void deleteCoupon(int couponId) {
        couponDao.deleteCoupon(couponId);
    }

    /** 모든 쿠폰 가져오기 */
    public List<CouponDto> findAll() {
        return couponDao.findAll();
    }

    /** 모든 쿠폰 - 검색하기 */
    public List<CouponDto> findAllByKeyword(String keyword) {
        return couponDao.findAllByKeyword(keyword);
    }

    /** 나의 쿠폰 - 검색하기 */
    public List<CouponDto> findAllByKeywordAndUserId(String keyword) {
        return couponDao.findAllByKeywordAndUserId(keyword, userService.getUserData().getId());
    }
}