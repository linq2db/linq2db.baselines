﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Parent` `p`
		INNER JOIN `GrandChild` `g_1` ON `p`.`ParentID` = `g_1`.`ParentID` AND `g_1`.`ParentID` IS NOT NULL
		INNER JOIN `Child` `c_1` ON `g_1`.`ChildID` = `c_1`.`ChildID`
		INNER JOIN `LinqDataTypes` `t` ON `c_1`.`ParentID` = `t`.`ID`
		INNER JOIN `Person` `t_1` ON `c_1`.`ParentID` = `t_1`.`PersonID`

