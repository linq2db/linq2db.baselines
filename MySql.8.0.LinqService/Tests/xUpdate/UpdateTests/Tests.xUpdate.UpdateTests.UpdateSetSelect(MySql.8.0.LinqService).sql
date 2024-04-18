BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE   `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` > 1000

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

UPDATE
	`Parent` `p`
		INNER JOIN `Child` `c_2` ON `p`.`ParentID` = `c_2`.`ParentID`
SET
	`p`.`ParentID` = (
		SELECT
			`c_1`.`ParentID`
		FROM
			`Child` `c_1`
		WHERE
			`c_1`.`ChildID` = 11
	) + 1000
WHERE
	`p`.`ParentID` = 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ParentID Int32
SET     @ParentID = 1

UPDATE
	`Parent` `_`
SET
	`_`.`ParentID` = @ParentID
WHERE
	`_`.`ParentID` = 1001

