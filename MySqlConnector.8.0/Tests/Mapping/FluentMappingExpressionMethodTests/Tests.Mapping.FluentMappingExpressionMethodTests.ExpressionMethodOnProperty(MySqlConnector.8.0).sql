BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`InstanceClass` `t`
WHERE
	Concat(CAST(`t`.`Id` AS CHAR(255)), CAST(`t`.`Value` AS CHAR(255))) = Concat(CAST(`t`.`Id` AS CHAR(255)), `t`.`Value`)

