﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @ParentID Int32
SET     @ParentID = 2
DECLARE @ChildID Int32
SET     @ChildID = 21

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Child` `ch`
WHERE
	(`ch`.`ParentID` <> @ParentID OR `ch`.`ChildID` <> @ChildID)

