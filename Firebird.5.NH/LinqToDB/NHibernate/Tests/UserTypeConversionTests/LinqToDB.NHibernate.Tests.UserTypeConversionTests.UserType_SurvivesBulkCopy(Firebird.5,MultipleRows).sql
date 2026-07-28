-- Firebird.5 Firebird4
DELETE FROM
	l2dbnh_payment t1


-- Firebird.5 Firebird4
INSERT INTO l2dbnh_payment
(
	paymentid,
	amount,
	priority
)
SELECT 11,1.25,CAST('H' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 12,2.5,'L' FROM rdb$database


select payment0_.paymentid as paymentid1_37_, payment0_.amount as amount2_37_, payment0_.priority as priority3_37_ from l2dbnh_payment payment0_ order by payment0_.paymentid asc

