-- MariaDB.10.MySql.Data MariaDB
DELETE  
FROM
	`l2dbnh_payment`


-- MariaDB.10.MySql.Data MariaDB
INSERT INTO `l2dbnh_payment`
(
	`paymentid`,
	`amount`,
	`priority`
)
VALUES
(11,1.25,'H'),
(12,2.5,'L')


select payment0_.paymentid as paymentid1_37_, payment0_.amount as amount2_37_, payment0_.priority as priority3_37_ from l2dbnh_payment payment0_ order by payment0_.paymentid asc

