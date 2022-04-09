BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `BaseTable`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `BaseTable`
(
	`Value` INT NOT NULL,
	`Id`    INT NOT NULL,

	CONSTRAINT `PK_BaseTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `BaseTable`
(
	`Value`,
	`Id`
)
VALUES
(100,1)

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`x`.`Value`,
	`x`.`Id`
FROM
	`BaseTable` `x`
WHERE
	`x`.`Id` = 1
LIMIT @take

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`x`.`Value`,
	`x`.`Id`
FROM
	`BaseTable` `x`
WHERE
	`x`.`Id` = 1 AND `x`.`Value` = 100
LIMIT @take

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `BaseTable`

