BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`InstanceClass` `t`
WHERE
	Concat(CAST(`t`.`Id` AS CHAR(255)), CAST(`t`.`Value` AS CHAR(255))) = Concat(CAST(`t`.`Id` AS CHAR(255)), `t`.`Value`)

