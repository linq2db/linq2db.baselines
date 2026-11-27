-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CONCAT_WS(',', `e`.`Value1`, Coalesce(`e`.`Name`, ''), `e`.`Id`)
FROM
	`JoinProbeEntity` `e`

