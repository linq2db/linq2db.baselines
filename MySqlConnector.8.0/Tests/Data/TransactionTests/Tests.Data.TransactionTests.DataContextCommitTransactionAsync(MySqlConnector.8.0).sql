BeginTransactionAsync
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @ParentID Int32
SET     @ParentID = 1010
DECLARE @Value1 Int32
SET     @Value1 = 1010

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(
	@ParentID,
	@Value1
)

CommitTransactionAsync
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` = 1010

