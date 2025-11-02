-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @ID Int32
SET     @ID = 5000
DECLARE @MoneyValue Decimal(1, 0)
SET     @MoneyValue = 0
DECLARE @DateTimeValue Datetime -- DateTime
SET     @DateTimeValue = '2018-01-03'
DECLARE @BoolValue UByte -- Boolean
SET     @BoolValue = 0
DECLARE @GuidValue Guid
SET     @GuidValue = '00000000-0000-0000-0000-000000000000'
DECLARE @BinaryValue Blob -- Binary
SET     @BinaryValue = NULL
DECLARE @SmallIntValue Int16
SET     @SmallIntValue = 2
DECLARE @StringValue VarChar -- String
SET     @StringValue = NULL

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`MoneyValue`,
	`DateTimeValue`,
	`BoolValue`,
	`GuidValue`,
	`BinaryValue`,
	`SmallIntValue`,
	`StringValue`
)
VALUES
(
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@BoolValue,
	@GuidValue,
	@BinaryValue,
	@SmallIntValue,
	@StringValue
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`ID` = 5000 AND Date_Add(`t`.`DateTimeValue`, Interval `t`.`SmallIntValue` Day) > STR_TO_DATE('2018-01-02 00:00:00.000', '%Y-%m-%d %H:%i:%s.%f')

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` = 5000

