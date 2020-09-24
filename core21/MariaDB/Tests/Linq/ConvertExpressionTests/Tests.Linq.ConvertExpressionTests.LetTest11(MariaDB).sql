BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` > 0
ORDER BY
	`c_1`.`ParentID`
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` > -100
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	1
FROM
	`Parent` `p`

