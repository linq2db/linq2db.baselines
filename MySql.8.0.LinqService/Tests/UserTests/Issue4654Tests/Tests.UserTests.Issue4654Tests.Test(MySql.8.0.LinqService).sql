BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4654Customer`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue4654Customer`
(
	`Id`   INT           AUTO_INCREMENT NOT NULL,
	`Name` VARCHAR(4000)                    NULL,

	CONSTRAINT `PK_Issue4654Customer` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4654Order`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue4654Order`
(
	`Id`          INT           AUTO_INCREMENT NOT NULL,
	`ProductName` VARCHAR(4000)                    NULL,
	`Quantity`    INT                          NOT NULL,
	`CustomerId`  INT                          NOT NULL,

	CONSTRAINT `PK_Issue4654Order` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4654Product`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue4654Product`
(
	`Id`    INT             AUTO_INCREMENT NOT NULL,
	`Name`  VARCHAR(4000)                      NULL,
	`Price` DECIMAL(29, 10)                NOT NULL,

	CONSTRAINT `PK_Issue4654Product` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	CAST(`c_1`.`Id` AS CHAR(11)),
	`c_1`.`Name`
FROM
	`Issue4654Customer` `c_1`
UNION
SELECT
	CAST(`o`.`Id` AS CHAR(11)),
	`o`.`ProductName`
FROM
	`Issue4654Order` `o`
UNION
SELECT
	CAST(`p`.`Id` AS CHAR(11)),
	`p`.`Name`
FROM
	`Issue4654Product` `p`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4654Product`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4654Order`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4654Customer`

