﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`p`.`MyEnum`,
	`p`.`MyEnum2`
FROM
	`TestIssue358Class` `p`
WHERE
	`p`.`MyEnum` <> 0 OR `p`.`MyEnum` IS NULL

