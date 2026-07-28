-- SqlServer.2008
DELETE [t1]
FROM
	[l2dbnh_payment] [t1]


Batch commands:
command 0:INSERT INTO l2dbnh_payment (amount, priority, paymentid) VALUES (@p0, @p1, @p2);@p0 = 10.5 [Type: Decimal (0:10:29)], @p1 = 'L' [Type: String (4000:0:0)], @p2 = 1 [Type: Int32 (0:0:0)]
command 1:INSERT INTO l2dbnh_payment (amount, priority, paymentid) VALUES (@p0, @p1, @p2);@p0 = 20.25 [Type: Decimal (0:10:29)], @p1 = 'H' [Type: String (4000:0:0)], @p2 = 2 [Type: Int32 (0:0:0)]


-- SqlServer.2008
DECLARE @Priority NVarChar(4000) -- String
SET     @Priority = N'H'

SELECT
	[p].[paymentid]
FROM
	[l2dbnh_payment] [p]
WHERE
	[p].[priority] = @Priority


-- SqlServer.2008
DECLARE @Amount Decimal(3, 1)
SET     @Amount = 10.5

SELECT
	[p].[paymentid]
FROM
	[l2dbnh_payment] [p]
WHERE
	[p].[amount] = @Amount


