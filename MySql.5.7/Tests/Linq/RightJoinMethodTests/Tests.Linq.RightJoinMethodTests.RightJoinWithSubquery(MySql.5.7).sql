-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @take Int32
SET     @take = 10

SELECT
	`p_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	(
		SELECT
			`p`.`ParentID`
		FROM
			`Parent` `p`
		WHERE
			`p`.`ParentID` > 0
		LIMIT @take
	) `p_1`
		RIGHT JOIN `Child` `c_1` ON `p_1`.`ParentID` = `c_1`.`ParentID`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

