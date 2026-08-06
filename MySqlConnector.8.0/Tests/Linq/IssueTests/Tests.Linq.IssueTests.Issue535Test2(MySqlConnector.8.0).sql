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

