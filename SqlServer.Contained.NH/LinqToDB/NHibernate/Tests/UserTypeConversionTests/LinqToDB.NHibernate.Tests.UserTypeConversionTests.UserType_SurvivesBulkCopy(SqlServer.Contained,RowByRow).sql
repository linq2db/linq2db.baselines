-- SqlServer.2008
DELETE [t1]
FROM
	[l2dbnh_payment] [t1]


-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 11
DECLARE @Amount Decimal(3, 2)
SET     @Amount = 1.25
DECLARE @Priority NVarChar(4000) -- String
SET     @Priority = N'H'

INSERT INTO [l2dbnh_payment]
(
	[paymentid],
	[amount],
	[priority]
)
VALUES
(
	@Id,
	@Amount,
	@Priority
)


-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 12
DECLARE @Amount Decimal(2, 1)
SET     @Amount = 2.5
DECLARE @Priority NVarChar(4000) -- String
SET     @Priority = N'L'

INSERT INTO [l2dbnh_payment]
(
	[paymentid],
	[amount],
	[priority]
)
VALUES
(
	@Id,
	@Amount,
	@Priority
)


select payment0_.paymentid as paymentid1_37_, payment0_.amount as amount2_37_, payment0_.priority as priority3_37_ from l2dbnh_payment payment0_ order by payment0_.paymentid asc

