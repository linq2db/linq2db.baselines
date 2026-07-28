-- PostgreSQL.9.3 PostgreSQL
DELETE FROM
	l2dbnh_payment t1


-- PostgreSQL.9.3 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 11
DECLARE @Amount Numeric(3, 2) -- Decimal
SET     @Amount = 1.25
DECLARE @Priority Varchar(1) -- String
SET     @Priority = 'H'

INSERT INTO l2dbnh_payment
(
	paymentid,
	amount,
	priority
)
VALUES
(
	:Id,
	:Amount,
	:Priority
)


-- PostgreSQL.9.3 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 12
DECLARE @Amount Numeric(2, 1) -- Decimal
SET     @Amount = 2.5
DECLARE @Priority Varchar(1) -- String
SET     @Priority = 'L'

INSERT INTO l2dbnh_payment
(
	paymentid,
	amount,
	priority
)
VALUES
(
	:Id,
	:Amount,
	:Priority
)


select payment0_.paymentid as paymentid1_37_, payment0_.amount as amount2_37_, payment0_.priority as priority3_37_ from l2dbnh_payment payment0_ order by payment0_.paymentid asc

