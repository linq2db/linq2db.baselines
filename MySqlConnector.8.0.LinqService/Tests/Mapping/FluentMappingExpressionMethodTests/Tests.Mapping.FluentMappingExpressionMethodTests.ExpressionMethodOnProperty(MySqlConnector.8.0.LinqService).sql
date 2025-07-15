BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`InstanceClass` `t`
WHERE
	Concat(CAST(`t`.`Id` AS CHAR(11)), CAST(`t`.`Value` AS CHAR(11))) = Concat(CAST(`t`.`Id` AS CHAR(11)), `t`.`Value`)

