-- Firebird.5 Firebird4
DELETE FROM
	l2dbnh_voucher t1


INSERT INTO l2dbnh_voucher (title, invoiceno, vouchertype, voucherid) VALUES (@p0, @p1, 'INV', @p2);@p0 = 'Invoice 1' [Type: String (9:0:0)], @p1 = 'I-1' [Type: String (3:0:0)], @p2 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_voucher (title, receiptno, vouchertype, voucherid) VALUES (@p0, @p1, 'RCP', @p2);@p0 = 'Receipt 2' [Type: String (9:0:0)], @p1 = 'R-2' [Type: String (3:0:0)], @p2 = 2 [Type: Int32 (0:0:0)]

-- Firebird.5 Firebird4
DECLARE @p VarChar(3) -- String
SET     @p = 'INV'

SELECT
	e.voucherid,
	e.title,
	e.invoiceno
FROM
	l2dbnh_voucher e
WHERE
	e.vouchertype = @p
ORDER BY
	e.voucherid


select invoice0_.voucherid as col_0_0_ from l2dbnh_voucher invoice0_ where invoice0_.vouchertype='INV' order by invoice0_.voucherid asc

