BeforeExecute
-- MariaDB MySql.Official MySql

UPDATE
	`LinqDataTypes` `x_1`
		INNER JOIN `Parent` `a_Table1` ON `a_Table1`.`ParentID` = `x_1`.`ID`
SET
	`x_1`.`BoolValue` = (NOT EXISTS(
		SELECT
			*
		FROM
			`Parent` `x`
		WHERE
			`x_1`.`ID` = `x`.`ParentID` AND (`x`.`Value1` <> 1 OR `x`.`Value1` IS NULL)
	))
WHERE
	`a_Table1`.`ParentID` IN (10000, 20000)

