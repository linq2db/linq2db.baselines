BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Car`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Car`
(
	`Id`   INT         NOT NULL,
	`Name` VARCHAR(50)     NULL,

	CONSTRAINT `PK_Car` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `Car`
(
	`Id`,
	`Name`
)
VALUES
(1,'Special'),
(2,'NoSpecial')

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`Id`,
	`x`.`Name`
FROM
	`Car` `x`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`Car` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`Id`,
	`x`.`Name`
FROM
	`Car` `x`
WHERE
	(`x`.`Name` <> 'Special' OR `x`.`Name` IS NULL)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`Car` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`Id`,
	`x`.`Name`
FROM
	`Car` `x`
WHERE
	`x`.`Name` = 'Special'

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`Car` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`Id`,
	`x`.`Name`
FROM
	`Car` `x`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`Car` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`Id`,
	`x`.`Name`
FROM
	`Car` `x`
WHERE
	(`x`.`Name` <> 'Special' OR `x`.`Name` IS NULL)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`Car` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`Id`,
	`x`.`Name`
FROM
	`Car` `x`
WHERE
	`x`.`Name` = 'Special'

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`Car` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Car`

