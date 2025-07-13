BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`InstanceClass` `t`
WHERE
	Concat(CAST(`t`.`Id` AS CHAR(11)), CAST(`t`.`Value` AS CHAR(11))) = Concat(CAST(`t`.`Id` AS CHAR(11)), `t`.`Value`)

