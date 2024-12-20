BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `CustomerBase`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @filter VarChar(4) -- String
SET     @filter = 'test'

SELECT
	`q`.`Id`,
	`q`.`Name`,
	`q`.`ContactEmail`,
	Coalesce(`q`.`Enabled`, 0)
FROM
	`CustomerBase` `q`
WHERE
	`q`.`ClientType` = 'Client' AND (LOCATE(@filter, `q`.`Name`) > 0 OR LOCATE(@filter, `q`.`ContactEmail`) > 0)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `CustomerBase`

