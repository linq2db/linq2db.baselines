BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Mixed`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Mixed`
(
	`Int`    INT           NOT NULL,
	`Str`    VARCHAR(4000)     NULL,
	`Date`   DATETIME      NOT NULL,
	`Double` DOUBLE        NOT NULL,
	`Bool`   BOOLEAN       NOT NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Int Int32
SET     @Int = 1
DECLARE @Str VarChar(3) -- String
SET     @Str = 'One'
DECLARE @Date Datetime -- DateTime
SET     @Date = '2001-01-01'
DECLARE @Double Double
SET     @Double = 1
DECLARE @Bool UByte -- Boolean
SET     @Bool = 1

INSERT INTO `Mixed`
(
	`Int`,
	`Str`,
	`Date`,
	`Double`,
	`Bool`
)
VALUES
(
	@Int,
	@Str,
	@Date,
	@Double,
	@Bool
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Int Int32
SET     @Int = 2
DECLARE @Str VarChar(3) -- String
SET     @Str = 'Two'
DECLARE @Date Datetime -- DateTime
SET     @Date = '2002-02-02'
DECLARE @Double Double
SET     @Double = 2
DECLARE @Bool UByte -- Boolean
SET     @Bool = 0

INSERT INTO `Mixed`
(
	`Int`,
	`Str`,
	`Date`,
	`Double`,
	`Bool`
)
VALUES
(
	@Int,
	@Str,
	@Date,
	@Double,
	@Bool
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Mixed` `t`
WHERE
	`t`.`Int` > 0 AND (`t`.`Str`, `t`.`Double`, `t`.`Bool`) = ('One', 1, 1) AND
	EXISTS(
		SELECT
			*
		FROM
			`Mixed` `u`
		WHERE
			(2, `u`.`Date`) > (`u`.`Int`, `t`.`Date`)
	)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Mixed`

