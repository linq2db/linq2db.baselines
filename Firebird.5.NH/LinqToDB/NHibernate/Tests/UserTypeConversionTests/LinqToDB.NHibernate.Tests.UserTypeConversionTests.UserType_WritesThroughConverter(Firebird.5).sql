-- Firebird.5 Firebird4
DELETE FROM
	l2dbnh_payment t1


INSERT INTO l2dbnh_payment (amount, priority, paymentid) VALUES (@p0, @p1, @p2);@p0 = 10.5 [Type: Decimal (0:0:0)], @p1 = 'L' [Type: String (1:0:0)], @p2 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_payment (amount, priority, paymentid) VALUES (@p0, @p1, @p2);@p0 = 20.25 [Type: Decimal (0:0:0)], @p1 = 'H' [Type: String (1:0:0)], @p2 = 2 [Type: Int32 (0:0:0)]

-- Firebird.5 Firebird4
DECLARE @Priority VarChar(1) -- String
SET     @Priority = 'H'
DECLARE @Amount Decimal(4, 2)
SET     @Amount = 99.75

UPDATE
	l2dbnh_payment p
SET
	priority = CAST(@Priority AS VARCHAR(1)),
	amount = CAST(@Amount AS Decimal(4, 2))
WHERE
	p.paymentid = 1


select payment0_.paymentid as paymentid1_37_, payment0_.amount as amount2_37_, payment0_.priority as priority3_37_ from l2dbnh_payment payment0_ where payment0_.paymentid=@p0;@p0 = 1 [Type: Int32 (0:0:0)]

