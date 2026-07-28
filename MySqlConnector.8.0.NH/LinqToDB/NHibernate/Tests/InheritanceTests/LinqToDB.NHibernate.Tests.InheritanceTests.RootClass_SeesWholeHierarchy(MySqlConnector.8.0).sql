-- MySql.8.0.MySql.Data MySql80
DELETE  
FROM
	`l2dbnh_voucher`


INSERT INTO l2dbnh_voucher (title, invoiceno, vouchertype, voucherid) VALUES (?p0, ?p1, N'INV', ?p2);?p0 = 'Invoice 1' [Type: String (9:0:0)], ?p1 = 'I-1' [Type: String (3:0:0)], ?p2 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_voucher (title, receiptno, vouchertype, voucherid) VALUES (?p0, ?p1, N'RCP', ?p2);?p0 = 'Receipt 2' [Type: String (9:0:0)], ?p1 = 'R-2' [Type: String (3:0:0)], ?p2 = 2 [Type: Int32 (0:0:0)]

-- MySql.8.0.MySql.Data MySql80
SELECT
	`d`.`voucherid`
FROM
	`l2dbnh_voucher` `d`
ORDER BY
	`d`.`voucherid`


