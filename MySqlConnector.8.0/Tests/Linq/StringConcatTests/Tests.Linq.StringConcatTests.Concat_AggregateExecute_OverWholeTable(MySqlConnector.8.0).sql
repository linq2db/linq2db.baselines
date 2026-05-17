-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	GROUP_CONCAT(Coalesce(`t1`.`Value`, '') ORDER BY `t1`.`PK` SEPARATOR '')
FROM
	`ConcatGroupedEntity` `t1`

