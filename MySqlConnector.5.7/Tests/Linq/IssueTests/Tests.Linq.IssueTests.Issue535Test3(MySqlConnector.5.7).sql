BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `CustomerBase`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `CustomerBase`
(
	`Id`           INT           AUTO_INCREMENT NOT NULL,
	`ClientType`   CHAR(6)                      NOT NULL,
	`Name`         VARCHAR(4000)                    NULL,
	`ContactEmail` VARCHAR(4000)                    NULL,
	`Enabled`      BOOLEAN                          NULL,

	CONSTRAINT `PK_CustomerBase` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`cb`.`Id`,
	`cb`.`Name`,
	`cb`.`ContactEmail`,
	`cb`.`Enabled`
FROM
	`CustomerBase` `cb`
WHERE
	`cb`.`ClientType` = 'Client'

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `CustomerBase`

