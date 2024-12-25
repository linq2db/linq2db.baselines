﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_2`.`ParentID`,
	`m_2`.`ChildID`,
	(ROW_NUMBER() OVER (ORDER BY `m_2`.`ChildID` DESC) - 1) % 2,
	ROW_NUMBER() OVER (ORDER BY `m_2`.`ChildID` DESC) - 1
FROM
	(
		SELECT
			`m_1`.`ChildID`,
			`a_Parent`.`ParentID`
		FROM
			`Child` `m_1`
				LEFT JOIN `Parent` `a_Parent` ON `m_1`.`ParentID` = `a_Parent`.`ParentID`
		WHERE
			`a_Parent`.`ParentID` IS NOT NULL AND `m_1`.`ParentID` > 0
	) `m_2`
ORDER BY
	`m_2`.`ChildID` DESC

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_2`.`ParentID`,
	`m_2`.`ChildID`,
	(ROW_NUMBER() OVER (ORDER BY `m_2`.`ChildID` DESC) - 1) % 2,
	ROW_NUMBER() OVER (ORDER BY `m_2`.`ChildID` DESC) - 1
FROM
	(
		SELECT
			`m_1`.`ChildID`,
			`a_Parent`.`ParentID`
		FROM
			`Child` `m_1`
				LEFT JOIN `Parent` `a_Parent` ON `m_1`.`ParentID` = `a_Parent`.`ParentID`
		WHERE
			`a_Parent`.`ParentID` IS NOT NULL AND `m_1`.`ParentID` > 0
	) `m_2`
ORDER BY
	`m_2`.`ChildID` DESC

