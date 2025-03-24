﻿BeforeExecute
--  MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @ParentID Int32
SET     @ParentID = 11
DECLARE @Value1 Int32
SET     @Value1 = 11

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Child` `param`
				LEFT JOIN `Parent` `a_Parent` ON `param`.`ParentID` = `a_Parent`.`ParentID`
		WHERE
			`a_Parent`.`ParentID` = @ParentID AND `a_Parent`.`Value1` = @Value1
	) as `c1`

