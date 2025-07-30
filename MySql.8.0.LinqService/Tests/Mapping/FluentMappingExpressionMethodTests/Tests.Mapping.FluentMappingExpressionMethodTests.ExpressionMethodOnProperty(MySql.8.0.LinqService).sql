BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`InstanceClass` `t`
WHERE
	Concat(CAST(`t`.`Id` AS CHAR(11)), CAST(`t`.`Value` AS CHAR(11))) = Concat(CAST(`t`.`Id` AS CHAR(11)), `t`.`Value`)

