BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3791Table`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue3791Table`
(
	`Id`      INT           AUTO_INCREMENT NOT NULL,
	`OtherId` VARCHAR(4000)                    NULL,

	CONSTRAINT `PK_Issue3791Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3791GuidTable`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue3791GuidTable`
(
	`Id` CHAR(36) NOT NULL,

	CONSTRAINT `PK_Issue3791GuidTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t2`.`Id`,
	`t2`.`OtherId`,
	`t1`.`Id`
FROM
	`Issue3791Table` `t2`
		LEFT JOIN (
			SELECT
				`a_Association`.`Id`,
				CAST(`a_Association`.`Id` AS CHAR(36)) as `c1`
			FROM
				`Issue3791GuidTable` `a_Association`
		) `t1` ON (`t2`.`OtherId` = `t1`.`c1` OR `t2`.`OtherId` IS NULL AND `t1`.`c1` IS NULL)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3791GuidTable`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3791Table`

