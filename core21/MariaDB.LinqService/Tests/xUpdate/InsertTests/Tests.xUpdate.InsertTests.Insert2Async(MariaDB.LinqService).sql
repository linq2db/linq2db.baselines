BeforeExecute
-- MariaDB MySql.Official MySql (asynchronously)

DELETE `t1`
FROM
	`Child` `t1`
WHERE
	`t1`.`ChildID` > 1000

BeforeExecute
-- MariaDB MySql.Official MySql (asynchronously)
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
-- MariaDB MySql.Official MySql (asynchronously)
DECLARE @id Int32
SET     @id = 1001

SELECT 
	Count(*)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` = @id

BeforeExecute
-- MariaDB MySql.Official MySql (asynchronously)

DELETE `t1`
FROM
	`Child` `t1`
WHERE
	`t1`.`ChildID` > 1000

