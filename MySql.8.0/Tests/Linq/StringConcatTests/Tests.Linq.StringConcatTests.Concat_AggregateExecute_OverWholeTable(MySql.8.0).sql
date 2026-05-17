-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	GROUP_CONCAT(Coalesce(`t1`.`Value`, '') ORDER BY `t1`.`PK` SEPARATOR '')
FROM
	`ConcatGroupedEntity` `t1`

