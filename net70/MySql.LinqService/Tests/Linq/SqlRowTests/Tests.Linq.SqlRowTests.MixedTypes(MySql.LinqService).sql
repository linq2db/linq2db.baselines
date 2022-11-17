BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Mixed`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Mixed`
(
	`Int`    INT           NOT NULL,
	`Str`    VARCHAR(4000)     NULL,
	`Date`   DATETIME      NOT NULL,
	`Double` DOUBLE        NOT NULL,
	`Bool`   BOOLEAN       NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Int_1 Int32
SET     @Int_1 = 1
DECLARE @Str VarChar(3) -- String
SET     @Str = 'One'
DECLARE @Date_1 DateTime
SET     @Date_1 = '2001-01-01'
DECLARE @Double_1 Double
SET     @Double_1 = 1
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
	@Int_1,
	@Str,
	@Date_1,
	@Double_1,
	@Bool
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Int_1 Int32
SET     @Int_1 = 2
DECLARE @Str VarChar(3) -- String
SET     @Str = 'Two'
DECLARE @Date_1 DateTime
SET     @Date_1 = '2002-02-02'
DECLARE @Double_1 Double
SET     @Double_1 = 2
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
	@Int_1,
	@Str,
	@Date_1,
	@Double_1,
	@Bool
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
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
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Mixed`

