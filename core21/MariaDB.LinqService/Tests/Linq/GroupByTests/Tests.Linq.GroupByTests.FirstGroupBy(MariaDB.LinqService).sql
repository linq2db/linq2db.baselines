﻿BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`t1`.`ParentID`
FROM
	`Child` `t1`
GROUP BY
	`t1`.`ParentID`

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @ParentID_1 Int32
SET     @ParentID_1 = 1

SELECT
	`keyParam`.`ParentID`,
	`keyParam`.`ChildID`
FROM
	`Child` `keyParam`
WHERE
	`keyParam`.`ParentID` = @ParentID_1

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @ParentID_1 Int32
SET     @ParentID_1 = 2

SELECT
	`keyParam`.`ParentID`,
	`keyParam`.`ChildID`
FROM
	`Child` `keyParam`
WHERE
	`keyParam`.`ParentID` = @ParentID_1

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @ParentID_1 Int32
SET     @ParentID_1 = 3

SELECT
	`keyParam`.`ParentID`,
	`keyParam`.`ChildID`
FROM
	`Child` `keyParam`
WHERE
	`keyParam`.`ParentID` = @ParentID_1

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @ParentID_1 Int32
SET     @ParentID_1 = 4

SELECT
	`keyParam`.`ParentID`,
	`keyParam`.`ChildID`
FROM
	`Child` `keyParam`
WHERE
	`keyParam`.`ParentID` = @ParentID_1

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @ParentID_1 Int32
SET     @ParentID_1 = 6

SELECT
	`keyParam`.`ParentID`,
	`keyParam`.`ChildID`
FROM
	`Child` `keyParam`
WHERE
	`keyParam`.`ParentID` = @ParentID_1

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @ParentID_1 Int32
SET     @ParentID_1 = 7

SELECT
	`keyParam`.`ParentID`,
	`keyParam`.`ChildID`
FROM
	`Child` `keyParam`
WHERE
	`keyParam`.`ParentID` = @ParentID_1

