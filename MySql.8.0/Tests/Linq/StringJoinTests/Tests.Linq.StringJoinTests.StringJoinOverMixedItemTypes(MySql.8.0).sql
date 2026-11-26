-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	CONCAT_WS(',', `e`.`Value1`, Coalesce(`e`.`Name`, ''), `e`.`Id`)
FROM
	`JoinProbeEntity` `e`

