-- MariaDB.10.MySql.Data MariaDB
DELETE  
FROM
	`l2dbnh_voucher`


INSERT INTO l2dbnh_voucher (title, invoiceno, vouchertype, voucherid) VALUES (?p0, ?p1, N'INV', ?p2);?p0 = 'Invoice 1' [Type: String (9:0:0)], ?p1 = 'I-1' [Type: String (3:0:0)], ?p2 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_voucher (title, receiptno, vouchertype, voucherid) VALUES (?p0, ?p1, N'RCP', ?p2);?p0 = 'Receipt 2' [Type: String (9:0:0)], ?p1 = 'R-2' [Type: String (3:0:0)], ?p2 = 2 [Type: Int32 (0:0:0)]

-- MariaDB.10.MySql.Data MariaDB
DECLARE @p VarChar(3) -- String
SET     @p = 'INV'

SELECT
	`e`.`voucherid`,
	`e`.`title`,
	`e`.`invoiceno`
FROM
	`l2dbnh_voucher` `e`
WHERE
	`e`.`vouchertype` = @p
ORDER BY
	`e`.`voucherid`


select invoice0_.voucherid as col_0_0_ from l2dbnh_voucher invoice0_ where invoice0_.vouchertype=N'INV' order by invoice0_.voucherid asc

