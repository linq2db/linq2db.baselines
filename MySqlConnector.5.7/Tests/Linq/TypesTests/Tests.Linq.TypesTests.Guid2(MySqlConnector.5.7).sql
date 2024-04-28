BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @GuidValue Guid
SET     @GuidValue = '40932fdb-1543-4e4a-ac2c-ca371604fb4b'

SELECT
	`p`.`ID`,
	`p`.`MoneyValue`,
	`p`.`DateTimeValue`,
	`p`.`BoolValue`,
	`p`.`GuidValue`,
	`p`.`BinaryValue`,
	`p`.`SmallIntValue`,
	`p`.`StringValue`
FROM
	`LinqDataTypes` `p`
WHERE
	`p`.`GuidValue` = @GuidValue
LIMIT 2

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @GuidValue Guid
SET     @GuidValue = 'd2f970c0-35ac-4987-9cd5-5badb1757436'

SELECT
	`p`.`ID`,
	`p`.`MoneyValue`,
	`p`.`DateTimeValue`,
	`p`.`BoolValue`,
	`p`.`GuidValue`,
	`p`.`BinaryValue`,
	`p`.`SmallIntValue`,
	`p`.`StringValue`
FROM
	`LinqDataTypes` `p`
WHERE
	`p`.`GuidValue` = @GuidValue
LIMIT 2

