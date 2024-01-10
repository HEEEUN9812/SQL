USED_GOODS_BOARD와 USED_GOODS_USER 테이블에서 완료된 중고 거래의 총금액이 70만 원 이상인 사람의 회원 ID, 닉네임, 총거래금액을 조회하는 SQL문을 작성해주세요. 결과는 총거래금액을 기준으로 오름차순 정렬해주세요.

SELECT U.USER_ID, U.NICKNAME, SUM(B.PRICE)
FROM USED_GOODS_BOARD B INNER JOIN USED_GOODS_USER U ON B.WRITER_ID = U.USER_ID
WHERE B.STATUS = 'DONE'
GROUP BY 1
HAVING SUM(B.PRICE) >= 700000
ORDER BY 3