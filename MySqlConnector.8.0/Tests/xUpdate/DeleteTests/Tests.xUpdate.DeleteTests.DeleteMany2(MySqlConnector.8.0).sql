-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Parent`
(
	`ParentID`
)
VALUES
(
	1001
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `GrandChild`
(
	`ParentID`,
	`ChildID`,
	`GrandChildID`
)
VALUES
(
	1001,
	1,
	1
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `GrandChild`
(
	`ParentID`,
	`ChildID`,
	`GrandChildID`
)
VALUES
(
	1001,
	1,
	2
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `GrandChild`
(
	`ParentID`,
	`ChildID`,
	`GrandChildID`
)
VALUES
(
	1001,
	1,
	3
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `GrandChild`
(
	`ParentID`,
	`ChildID`,
	`GrandChildID`
)
VALUES
(
	1001,
	2,
	1
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `GrandChild`
(
	`ParentID`,
	`ChildID`,
	`GrandChildID`
)
VALUES
(
	1001,
	2,
	2
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `GrandChild`
(
	`ParentID`,
	`ChildID`,
	`GrandChildID`
)
VALUES
(
	1001,
	2,
	3
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE   `a_GrandChildren`
FROM
	`Parent` `p`
		INNER JOIN `Child` `a_Children` ON `p`.`ParentID` = `a_Children`.`ParentID`
		INNER JOIN `GrandChild` `a_GrandChildren` ON `a_Children`.`ParentID` = `a_GrandChildren`.`ParentID` AND `a_Children`.`ChildID` = `a_GrandChildren`.`ChildID`
WHERE
	`p`.`ParentID` >= 1000

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE   `a_Children`
FROM
	`Parent` `p`
		INNER JOIN `Child` `a_Children` ON `p`.`ParentID` = `a_Children`.`ParentID`
WHERE
	`p`.`ParentID` >= 1000

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`GrandChild`
WHERE
	`GrandChild`.`ParentID` >= 1000

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`Child`
WHERE
	`Child`.`ParentID` >= 1000

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` >= 1000

