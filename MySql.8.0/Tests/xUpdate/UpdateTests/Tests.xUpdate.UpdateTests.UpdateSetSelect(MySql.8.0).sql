-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` > 1000

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

UPDATE
	`Parent` `p`
		INNER JOIN `Child` `c_1` ON `p`.`ParentID` = `c_1`.`ParentID`
		LEFT JOIN `Child` `c_2` ON `c_2`.`ChildID` = 11
SET
	`p`.`ParentID` = `c_2`.`ParentID` + 1000
WHERE
	`p`.`ParentID` = 1

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ParentID Int32
SET     @ParentID = 1

UPDATE
	`Parent` `t1`
SET
	`t1`.`ParentID` = @ParentID
WHERE
	`t1`.`ParentID` = 1001

