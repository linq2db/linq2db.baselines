-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`Child`
WHERE
	`Child`.`ChildID` > 1000

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @id Int32
SET     @id = 1001

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
SELECT
	`c_1`.`ParentID`,
	@id
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` = 11

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @id Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` = @id

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`Child`
WHERE
	`Child`.`ChildID` > 1000

