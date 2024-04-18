﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @id1 Int32
SET     @id1 = 3
DECLARE @Value Int32
SET     @Value = 3
DECLARE @take Int32
SET     @take = 1

SELECT
	`с`.`ChildID`
FROM
	`GrandChild` `с`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Parent` `_`
				INNER JOIN (`Child` `c_1`
					INNER JOIN `GrandChild` `a_Child` ON `c_1`.`ChildID` = `a_Child`.`ChildID`)
				ON `_`.`ParentID` = `c_1`.`ParentID`
				LEFT JOIN `Parent` `a_Parent` ON `a_Child`.`ParentID` = `a_Parent`.`ParentID`
		WHERE
			`a_Parent`.`ParentID` IS NOT NULL AND `a_Parent`.`ParentID` = @id1 AND
			`_`.`ParentID` = @Value
	)
ORDER BY
	`с`.`ChildID`
LIMIT @take

