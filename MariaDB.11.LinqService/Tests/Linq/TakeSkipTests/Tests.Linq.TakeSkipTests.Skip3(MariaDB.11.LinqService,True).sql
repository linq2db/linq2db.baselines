BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @skip Int32
SET     @skip = 3

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Child` `ch`
WHERE
	`ch`.`ChildID` >= 0 AND `ch`.`ChildID` <= 100
ORDER BY
	`ch`.`ParentID`,
	`ch`.`ChildID`
LIMIT @skip, 9223372036854775807

