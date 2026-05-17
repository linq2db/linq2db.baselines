-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`ParentID`,
	`p`.`Value1`,
	CAST(NULL AS SIGNED),
	CAST(NULL AS SIGNED),
	CAST(NULL AS SIGNED)
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1
UNION ALL
SELECT
	CAST(NULL AS SIGNED),
	CAST(NULL AS SIGNED),
	`a_Parent`.`ParentID`,
	`a_Parent`.`ParentID`,
	`a_Parent`.`Value1`
FROM
	`Child` `ch`
		LEFT JOIN `Parent` `a_Parent` ON `ch`.`ParentID` = `a_Parent`.`ParentID`
WHERE
	`ch`.`ParentID` = 2

