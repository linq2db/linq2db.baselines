﻿BeforeExecute
--  MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`ParentID`,
	`t`.`Value1`
FROM
	`Parent` `t`
		LEFT JOIN `Child` `a_Middle` ON `t`.`ParentID` = `a_Middle`.`ParentID`
WHERE
	`a_Middle`.`ParentID` <> 4 OR `a_Middle`.`ParentID` IS NULL

