BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Car`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Car`
(
	`Id`   INT         NOT NULL,
	`Name` VARCHAR(50)     NULL,

	CONSTRAINT `PK_Car` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(7) -- String
SET     @Name = 'Special'

INSERT INTO `Car`
(
	`Id`,
	`Name`
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name VarChar(9) -- String
SET     @Name = 'NoSpecial'

INSERT INTO `Car`
(
	`Id`,
	`Name`
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`x`.`Id`,
	`x`.`Name`
FROM
	`Car` `x`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`x`.`Id`,
	`x`.`Name`
FROM
	`Car` `x`
WHERE
	(`x`.`Name` <> 'Special' OR `x`.`Name` IS NULL)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`x`.`Id`,
	`x`.`Name`
FROM
	`Car` `x`
WHERE
	`x`.`Name` = 'Special'

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`x`.`Id`,
	`x`.`Name`
FROM
	`Car` `x`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`x`.`Id`,
	`x`.`Name`
FROM
	`Car` `x`
WHERE
	(`x`.`Name` <> 'Special' OR `x`.`Name` IS NULL)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`x`.`Id`,
	`x`.`Name`
FROM
	`Car` `x`
WHERE
	`x`.`Name` = 'Special'

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Car`

