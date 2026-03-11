-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `Parent`
(
	`ParentID`
)
VALUES
(
	1001
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
VALUES
(
	1001,
	1
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
VALUES
(
	1001,
	2
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE   `a_Children`
FROM
	`Parent` `p`
		INNER JOIN `Child` `a_Children` ON `p`.`ParentID` = `a_Children`.`ParentID`
WHERE
	`p`.`ParentID` >= 1000

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`Child`
WHERE
	`Child`.`ParentID` >= 1000

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` >= 1000

