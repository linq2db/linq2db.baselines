-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @n Int32
SET     @n = 1

SELECT
	`m_1`.`ParentID`,
	`d`.`ParentID`,
	`d`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`t1`.`ParentID`
		FROM
			`Parent` `t1`
		WHERE
			`t1`.`ParentID` = 1
	) `m_1`
		INNER JOIN `Child` `d` ON `m_1`.`ParentID` + @n = `d`.`ParentID`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` = 1

