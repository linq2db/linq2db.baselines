-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT /*+ RESOURCE_GROUP(USR_default) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

