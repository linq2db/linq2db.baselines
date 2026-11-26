-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	CONCAT_WS(',', `e`.`Value1`, Coalesce(`e`.`Name`, ''), `e`.`Id`)
FROM
	`JoinProbeEntity` `e`

