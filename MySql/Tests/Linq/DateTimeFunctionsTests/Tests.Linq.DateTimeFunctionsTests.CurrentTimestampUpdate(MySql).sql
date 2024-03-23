BeforeExecute
-- MySql MySql.Official MySql
DECLARE @BoolValue UByte -- Boolean
SET     @BoolValue = 1

UPDATE
	`LinqDataTypes` `p`
SET
	`p`.`BoolValue` = @BoolValue,
	`p`.`DateTimeValue` = CURRENT_TIMESTAMP
WHERE
	`p`.`ID` = 100000

