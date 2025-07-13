BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`ParentID`
FROM
	`Child` `c_1`
		INNER JOIN `Parent` `p` ON `c_1`.`ParentID` = `p`.`ParentID`
WHERE
	`c_1`.`ChildID` = 11
UNION
SELECT
	`c_2`.`ParentID`
FROM
	`Child` `c_2`
WHERE
	`c_2`.`ChildID` = 11

