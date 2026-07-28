-- SQLite.Classic SQLite
DELETE FROM
	[l2dbnh_payment]


INSERT INTO l2dbnh_payment (amount, priority, paymentid) VALUES (@p0, @p1, @p2);@p0 = 10.5 [Type: Decimal (0:0:0)], @p1 = 'L' [Type: String (0:0:0)], @p2 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_payment (amount, priority, paymentid) VALUES (@p0, @p1, @p2);@p0 = 20.25 [Type: Decimal (0:0:0)], @p1 = 'H' [Type: String (0:0:0)], @p2 = 2 [Type: Int32 (0:0:0)]

-- SQLite.Classic SQLite
DECLARE @Priority NVarChar(1) -- String
SET     @Priority = 'H'

SELECT
	[p].[paymentid]
FROM
	[l2dbnh_payment] [p]
WHERE
	[p].[priority] = @Priority


-- SQLite.Classic SQLite
DECLARE @Amount Decimal(3, 1)
SET     @Amount = 10.5

SELECT
	[p].[paymentid]
FROM
	[l2dbnh_payment] [p]
WHERE
	[p].[amount] = @Amount


