BeforeExecute
-- MySql MySql.Official MySql (asynchronously)

DELETE `t1`
FROM
	`Child` `t1`
WHERE
	`t1`.`ChildID` > 1000

BeforeExecute
-- MySql MySql.Official MySql (asynchronously)
DECLARE @id Int32
SET     @id = 1001

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
VALUES
(
	1,
	@id
)

BeforeExecute
-- MySql MySql.Official MySql (asynchronously)
DECLARE @id Int32
SET     @id = 1001

SELECT 
	Count(*)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` = @id

BeforeExecute
-- MySql MySql.Official MySql (asynchronously)
DECLARE @id Int32
SET     @id = 1001

UPDATE
	`Child` `c_1`
		LEFT JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`
SET
	`c_1`.`ChildID` = `c_1`.`ChildID` + 1
WHERE
	`c_1`.`ChildID` = @id AND `a_Parent`.`Value1` = 1

BeforeExecute
-- MySql MySql.Official MySql (asynchronously)
DECLARE @ChildID Int32
SET     @ChildID = 1002

SELECT 
	Count(*)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` = @ChildID

BeforeExecute
-- MySql MySql.Official MySql (asynchronously)

DELETE `t1`
FROM
	`Child` `t1`
WHERE
	`t1`.`ChildID` > 1000

