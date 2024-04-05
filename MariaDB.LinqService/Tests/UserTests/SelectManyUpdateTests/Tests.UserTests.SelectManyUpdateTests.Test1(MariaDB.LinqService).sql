BeforeExecute
-- MariaDB MySqlConnector MySql

UPDATE
	`Parent` `a_Values`,
	`Parent` `x`
SET
	`a_Values`.`Value1` = NULL
WHERE
	`x`.`ParentID` IN (0, 0) AND `x`.`ParentID` = `a_Values`.`Value1`

