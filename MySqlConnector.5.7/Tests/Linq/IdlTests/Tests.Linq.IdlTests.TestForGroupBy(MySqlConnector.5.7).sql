﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x`.`ChildID`
FROM
	`GrandChild` `x`
WHERE
	`x`.`ParentID` IN (2)
GROUP BY
	`x`.`ChildID`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ChildID Int32
SET     @ChildID = 21

SELECT
	`x`.`GrandChildID`
FROM
	`GrandChild` `x`
WHERE
	`x`.`ParentID` IN (2) AND `x`.`ChildID` = @ChildID

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ChildID Int32
SET     @ChildID = 22

SELECT
	`x`.`GrandChildID`
FROM
	`GrandChild` `x`
WHERE
	`x`.`ParentID` IN (2) AND `x`.`ChildID` = @ChildID

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x`.`ChildID`
FROM
	`GrandChild` `x`
WHERE
	`x`.`ParentID` IN (3)
GROUP BY
	`x`.`ChildID`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ChildID Int32
SET     @ChildID = 31

SELECT
	`x`.`GrandChildID`
FROM
	`GrandChild` `x`
WHERE
	`x`.`ParentID` IN (3) AND `x`.`ChildID` = @ChildID

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ChildID Int32
SET     @ChildID = 32

SELECT
	`x`.`GrandChildID`
FROM
	`GrandChild` `x`
WHERE
	`x`.`ParentID` IN (3) AND `x`.`ChildID` = @ChildID

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ChildID Int32
SET     @ChildID = 33

SELECT
	`x`.`GrandChildID`
FROM
	`GrandChild` `x`
WHERE
	`x`.`ParentID` IN (3) AND `x`.`ChildID` = @ChildID

