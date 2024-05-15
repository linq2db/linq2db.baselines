BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` > 1000

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ParentID Int32
SET     @ParentID = 1001

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(
	@ParentID,
	1
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` = @id

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` > 1000

