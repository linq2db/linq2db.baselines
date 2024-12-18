﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`c_1`.`ParentID`,
	`c_1`.`Value1`
FROM
	`Parent` `c_1`
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			`Child` `o`
				LEFT JOIN `Parent` `a_Parent` ON `o`.`ParentID` = `a_Parent`.`ParentID`
		WHERE
			`a_Parent`.`ParentID` = `c_1`.`ParentID` AND
			`a_Parent`.`ParentID` IS NOT NULL AND
			(`a_Parent`.`Value1` = `c_1`.`Value1` AND `a_Parent`.`Value1` IS NOT NULL AND `c_1`.`Value1` IS NOT NULL OR `a_Parent`.`Value1` IS NULL AND `c_1`.`Value1` IS NULL) AND
			NOT EXISTS(
				SELECT
					*
				FROM
					`Child` `e`
				WHERE
					`o`.`ParentID` = `e`.`ParentID` AND `o`.`ChildID` = `e`.`ChildID` AND
					`e`.`ChildID` > 10
			)
	)

