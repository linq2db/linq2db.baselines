-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Coalesce(GROUP_CONCAT(`t1`.`Value` ORDER BY `t1`.`PK` SEPARATOR ''), '')
FROM
	`ConcatGroupedEntity` `t1`

