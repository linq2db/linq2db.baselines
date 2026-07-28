-- MySql.8.0.MySql.Data MySql80
DELETE  
FROM
	`l2dbnh_payment`


-- MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 11
DECLARE @Amount Decimal(3, 2)
SET     @Amount = 1.25
DECLARE @Priority VarChar(1) -- String
SET     @Priority = 'H'

INSERT INTO `l2dbnh_payment`
(
	`paymentid`,
	`amount`,
	`priority`
)
VALUES
(
	@Id,
	@Amount,
	@Priority
)


-- MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 12
DECLARE @Amount Decimal(2, 1)
SET     @Amount = 2.5
DECLARE @Priority VarChar(1) -- String
SET     @Priority = 'L'

INSERT INTO `l2dbnh_payment`
(
	`paymentid`,
	`amount`,
	`priority`
)
VALUES
(
	@Id,
	@Amount,
	@Priority
)


select payment0_.paymentid as paymentid1_37_, payment0_.amount as amount2_37_, payment0_.priority as priority3_37_ from l2dbnh_payment payment0_ order by payment0_.paymentid asc

