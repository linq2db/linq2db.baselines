BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 1001

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] = @ID

BeforeExecute
-- SqlCe

INSERT INTO [LinqDataTypes]
(
	[ID],
	[MoneyValue],
	[SmallIntValue]
)
VALUES
(
	1001,
	1000,
	100
)

BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 1001

UPDATE
	[LinqDataTypes]
SET
	[LinqDataTypes].[MoneyValue] = 2000,
	[LinqDataTypes].[SmallIntValue] = 200
WHERE
	[LinqDataTypes].[ID] = @ID

BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 1001

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] = @ID

