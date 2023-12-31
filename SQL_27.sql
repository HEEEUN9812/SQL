APPOINTMENT 테이블에서 2022년 5월에 예약한 환자 수를 진료과코드 별로 조회하는 SQL문을 작성해주세요. 이때, 컬럼명은 '진료과 코드', '5월예약건수'로 지정해주시고 결과는 진료과별 예약한 환자 수를 기준으로 오름차순 정렬하고, 예약한 환자 수가 같다면 진료과 코드를 기준으로 오름차순 정렬해주세요.

SELECT MCDP_CD "진료과 코드",
       COUNT(APNT_NO) "5월예약건수"
FROM APPOINTMENT
WHERE SUBSTR(APNT_YMD,1,7) = '2022-05'
GROUP BY 1
ORDER BY 2, 1