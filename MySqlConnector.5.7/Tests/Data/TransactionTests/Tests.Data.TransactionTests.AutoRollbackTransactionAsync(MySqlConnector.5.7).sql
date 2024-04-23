BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
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

BeforeExecute
BeginTransaction
BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

UPDATE
	`Parent` `t`
SET
	`t`.`Value1` = 1012
WHERE
	`t`.`ParentID` = 1010

BeforeExecute
DisposeTransactionAsync
BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	`t`.`ParentID`,
	`t`.`Value1`
FROM
	`Parent` `t`
WHERE
	`t`.`ParentID` = 1010
LIMIT 1

