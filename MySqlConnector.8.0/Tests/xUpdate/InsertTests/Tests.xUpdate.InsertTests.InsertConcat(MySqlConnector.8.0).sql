-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` > 1000

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
SELECT
	`p`.`ParentID` + 1000,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1
UNION ALL
SELECT
	`p_1`.`ParentID` + 1000,
	`p_1`.`Value1`
FROM
	`Parent` `p_1`
WHERE
	`p_1`.`ParentID` = 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` > 1000
ORDER BY
	`p`.`ParentID`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` > 1000

