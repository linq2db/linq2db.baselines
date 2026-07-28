-- SqlServer.2008
DELETE [t1]
FROM
	[l2dbnh_voucher] [t1]


Batch commands:
command 0:INSERT INTO l2dbnh_voucher (title, invoiceno, vouchertype, voucherid) VALUES (@p0, @p1, N'INV', @p2);@p0 = 'Invoice 1' [Type: String (4000:0:0)], @p1 = 'I-1' [Type: String (4000:0:0)], @p2 = 1 [Type: Int32 (0:0:0)]


Batch commands:
command 0:INSERT INTO l2dbnh_voucher (title, receiptno, vouchertype, voucherid) VALUES (@p0, @p1, N'RCP', @p2);@p0 = 'Receipt 2' [Type: String (4000:0:0)], @p1 = 'R-2' [Type: String (4000:0:0)], @p2 = 2 [Type: Int32 (0:0:0)]


-- SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = N'INV'

SELECT
	[d].[title]
FROM
	[l2dbnh_voucher] [d]
WHERE
	[d].[vouchertype] = @p


-- SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = N'RCP'

SELECT
	[d].[receiptno]
FROM
	[l2dbnh_voucher] [d]
WHERE
	[d].[vouchertype] = @p


