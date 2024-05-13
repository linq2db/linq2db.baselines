BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ParentID Int32
SET     @ParentID = 1111

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` = @ParentID

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ParentID Int32
SET     @ParentID = 2111

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` = @ParentID

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ParentID Int32
SET     @ParentID = 3111

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` = @ParentID

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ParentID Int32
SET     @ParentID = 4111

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` = @ParentID

BeforeExecute
BeginTransaction
BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(1111,1111),
(2111,2111),
(3111,3111),
(4111,4111)

BeforeExecute
CommitTransaction
BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ParentID Int32
SET     @ParentID = 1111

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` = @ParentID

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ParentID Int32
SET     @ParentID = 2111

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` = @ParentID

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ParentID Int32
SET     @ParentID = 3111

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` = @ParentID

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ParentID Int32
SET     @ParentID = 4111

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` = @ParentID

