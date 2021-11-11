BeforeExecute
-- MySqlConnector MySql
DECLARE @Value1 Int32
SET     @Value1 = NULL

UPDATE
	`Parent` `x`
		INNER JOIN `Parent` `c_1` ON `x`.`ParentID` = `c_1`.`Value1`
SET
	`x`.`Value1` = @Value1
WHERE
	`x`.`ParentID` IN (0, 0)

