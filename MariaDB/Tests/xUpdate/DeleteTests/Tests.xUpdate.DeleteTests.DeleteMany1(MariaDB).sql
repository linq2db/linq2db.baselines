BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `Parent`
(
	`ParentID`
)
VALUES
(
	1001
)

BeforeExecute
-- MariaDB MySqlConnector MySql

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

BeforeExecute
-- MariaDB MySqlConnector MySql

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

BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE   `a_Children`
FROM
	`Parent` `p`
		INNER JOIN `Child` `a_Children` ON `p`.`ParentID` = `a_Children`.`ParentID`
WHERE
	`p`.`ParentID` >= 1000

BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE   `c_1`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` >= 1000

BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE   `c_1`
FROM
	`Parent` `c_1`
WHERE
	`c_1`.`ParentID` >= 1000

