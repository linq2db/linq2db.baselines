﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DELETE   `p`
FROM
	`Parent` `p`
WHERE
	`p`.`Value1` = 11

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
SELECT
	`c_1`.`ParentID` + 1000,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` = 11

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`Parent` `p`
WHERE
	`p`.`Value1` = 11

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DELETE   `p`
FROM
	`Parent` `p`
WHERE
	`p`.`Value1` = 11

