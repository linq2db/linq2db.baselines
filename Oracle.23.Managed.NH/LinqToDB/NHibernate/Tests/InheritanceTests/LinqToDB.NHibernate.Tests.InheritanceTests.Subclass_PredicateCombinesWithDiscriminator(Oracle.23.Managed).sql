-- Oracle.Managed Oracle12
DELETE FROM
	l2dbnh_voucher t1


INSERT INTO l2dbnh_voucher (title, invoiceno, vouchertype, voucherid) VALUES (:p0, :p1, 'INV', :p2);:p0 = 'Invoice 1' [Type: String (0:0:0)], :p1 = 'I-1' [Type: String (0:0:0)], :p2 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_voucher (title, receiptno, vouchertype, voucherid) VALUES (:p0, :p1, 'RCP', :p2);:p0 = 'Receipt 2' [Type: String (0:0:0)], :p1 = 'R-2' [Type: String (0:0:0)], :p2 = 2 [Type: Int32 (0:0:0)]

-- Oracle.Managed Oracle12
DECLARE @p Varchar2(3) -- String
SET     @p = 'INV'

SELECT
	d.title
FROM
	l2dbnh_voucher d
WHERE
	d.vouchertype = :p


-- Oracle.Managed Oracle12
DECLARE @p Varchar2(3) -- String
SET     @p = 'RCP'

SELECT
	d.receiptno
FROM
	l2dbnh_voucher d
WHERE
	d.vouchertype = :p


