﻿BeforeExecute
--  MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`m_1`.`ParentID`,
	`d`.`ParentID`,
	`d`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`a_ParentTest`.`ParentID`
		FROM
			`Parent` `a`
				LEFT JOIN `Parent` `a_ParentTest` ON `a`.`ParentID` = `a_ParentTest`.`ParentID` AND (`a`.`Value1` = `a_ParentTest`.`Value1` OR `a`.`Value1` IS NULL AND `a_ParentTest`.`Value1` IS NULL)
		WHERE
			`a_ParentTest`.`ParentID` IS NULL OR EXISTS(
				SELECT
					*
				FROM
					`Child` `a_1`
				WHERE
					`a_ParentTest`.`ParentID` = `a_1`.`ParentID` AND `a_1`.`ChildID` = 11
			)
	) `m_1`
		INNER JOIN `Child` `d` ON `m_1`.`ParentID` = `d`.`ParentID`
ORDER BY
	`d`.`ChildID`

BeforeExecute
--  MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`a`.`ParentID`,
	`a_ParentTest`.`ParentID`
FROM
	`Parent` `a`
		LEFT JOIN `Parent` `a_ParentTest` ON `a`.`ParentID` = `a_ParentTest`.`ParentID` AND (`a`.`Value1` = `a_ParentTest`.`Value1` OR `a`.`Value1` IS NULL AND `a_ParentTest`.`Value1` IS NULL)
WHERE
	`a_ParentTest`.`ParentID` IS NULL OR EXISTS(
		SELECT
			*
		FROM
			`Child` `a_1`
		WHERE
			`a_ParentTest`.`ParentID` = `a_1`.`ParentID` AND `a_1`.`ChildID` = 11
	)

