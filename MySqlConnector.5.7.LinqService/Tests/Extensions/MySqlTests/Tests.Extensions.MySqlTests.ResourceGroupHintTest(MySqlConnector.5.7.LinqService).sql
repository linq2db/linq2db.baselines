BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT /*+ RESOURCE_GROUP(USR_default) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

