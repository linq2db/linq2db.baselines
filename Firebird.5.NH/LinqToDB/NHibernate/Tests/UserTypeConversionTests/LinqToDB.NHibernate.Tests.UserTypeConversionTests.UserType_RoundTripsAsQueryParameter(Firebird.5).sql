-- Firebird.5 Firebird4
DELETE FROM
	l2dbnh_payment t1


INSERT INTO l2dbnh_payment (amount, priority, paymentid) VALUES (@p0, @p1, @p2);@p0 = 10.5 [Type: Decimal (0:0:0)], @p1 = 'L' [Type: String (1:0:0)], @p2 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_payment (amount, priority, paymentid) VALUES (@p0, @p1, @p2);@p0 = 20.25 [Type: Decimal (0:0:0)], @p1 = 'H' [Type: String (1:0:0)], @p2 = 2 [Type: Int32 (0:0:0)]

-- Firebird.5 Firebird4
DECLARE @Priority VarChar(1) -- String
SET     @Priority = 'H'

SELECT
	p.paymentid
FROM
	l2dbnh_payment p
WHERE
	p.priority = @Priority


-- Firebird.5 Firebird4
DECLARE @Amount Decimal(3, 1)
SET     @Amount = 10.5

SELECT
	p.paymentid
FROM
	l2dbnh_payment p
WHERE
	p.amount = @Amount


