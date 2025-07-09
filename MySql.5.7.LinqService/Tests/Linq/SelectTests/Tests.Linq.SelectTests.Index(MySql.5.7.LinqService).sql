BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`a_Parent`.`ParentID`,
	`m_1`.`ChildID`
FROM
	`Child` `m_1`
		INNER JOIN `Parent` `a_Parent` ON `m_1`.`ParentID` = `a_Parent`.`ParentID`
WHERE
	`m_1`.`ParentID` > 0
ORDER BY
	`m_1`.`ChildID` DESC

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`a_Parent`.`ParentID`,
	`m_1`.`ChildID`
FROM
	`Child` `m_1`
		INNER JOIN `Parent` `a_Parent` ON `m_1`.`ParentID` = `a_Parent`.`ParentID`
WHERE
	`m_1`.`ParentID` > 0
ORDER BY
	`m_1`.`ChildID` DESC

