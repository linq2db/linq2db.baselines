-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Coalesce(GROUP_CONCAT(`t1`.`Value` ORDER BY `t1`.`PK` SEPARATOR ''), '')
FROM
	`ConcatGroupedEntity` `t1`

