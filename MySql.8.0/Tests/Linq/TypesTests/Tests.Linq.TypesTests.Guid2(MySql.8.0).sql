BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @p Guid
SET     @p = '40932fdb-1543-4e4a-ac2c-ca371604fb4b'

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
	`p`.`GuidValue` = @p
LIMIT 2

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @p Guid
SET     @p = 'd2f970c0-35ac-4987-9cd5-5badb1757436'

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
	`p`.`GuidValue` = @p
LIMIT 2

