BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Value1 Int64
SET     @Value1 = NULL

UPDATE
	`Parent` `a_Values`,
	`Parent` `x`
SET
	`a_Values`.`Value1` = @Value1
WHERE
	`x`.`ParentID` IN (0, 0) AND `x`.`ParentID` = `a_Values`.`Value1`

