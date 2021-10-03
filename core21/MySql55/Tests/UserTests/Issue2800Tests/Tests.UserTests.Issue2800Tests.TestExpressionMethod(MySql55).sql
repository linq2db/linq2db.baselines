BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `Car`

BeforeExecute
-- MySql55 MySql

CREATE TABLE IF NOT EXISTS `Car`
(
	`Id`   INT         NOT NULL,
	`Name` VARCHAR(50)     NULL,

	CONSTRAINT `PK_Car` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql

INSERT INTO `Car`
(
	`Id`,
	`Name`
)
VALUES
(1,'Special'),
(2,'NoSpecial')

BeforeExecute
-- MySql55 MySql

SELECT
	`x`.`Id`,
	`x`.`Name`
FROM
	`Car` `x`

BeforeExecute
-- MySql55 MySql

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`Car` `t1`

BeforeExecute
-- MySql55 MySql

SELECT
	`x`.`Id`,
	`x`.`Name`
FROM
	`Car` `x`
WHERE
	(`x`.`Name` <> 'Special' OR `x`.`Name` IS NULL)

BeforeExecute
-- MySql55 MySql

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`Car` `t1`

BeforeExecute
-- MySql55 MySql

SELECT
	`x`.`Id`,
	`x`.`Name`
FROM
	`Car` `x`
WHERE
	`x`.`Name` = 'Special'

BeforeExecute
-- MySql55 MySql

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`Car` `t1`

BeforeExecute
-- MySql55 MySql

SELECT
	`x`.`Id`,
	`x`.`Name`
FROM
	`Car` `x`

BeforeExecute
-- MySql55 MySql

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`Car` `t1`

BeforeExecute
-- MySql55 MySql

SELECT
	`x`.`Id`,
	`x`.`Name`
FROM
	`Car` `x`
WHERE
	(`x`.`Name` <> 'Special' OR `x`.`Name` IS NULL)

BeforeExecute
-- MySql55 MySql

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`Car` `t1`

BeforeExecute
-- MySql55 MySql

SELECT
	`x`.`Id`,
	`x`.`Name`
FROM
	`Car` `x`
WHERE
	`x`.`Name` = 'Special'

BeforeExecute
-- MySql55 MySql

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`Car` `t1`

BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `Car`

