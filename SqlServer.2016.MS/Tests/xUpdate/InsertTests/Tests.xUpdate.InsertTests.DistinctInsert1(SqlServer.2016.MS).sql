BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DELETE [c_1]
FROM
	[LinqDataTypes] [c_1]
WHERE
	[c_1].[ID] > 1000

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 1

INSERT INTO [LinqDataTypes]
(
	[ID],
	[GuidValue],
	[BoolValue]
)
SELECT
	Convert(Int, [t1].[c1] + 1001),
	NewID(),
	@BoolValue
FROM
	(
		SELECT DISTINCT
			Floor(Convert(Float, [_].[ID]) / 3) as [c1]
		FROM
			[LinqDataTypes] [_]
	) [t1]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DELETE [c_1]
FROM
	[LinqDataTypes] [c_1]
WHERE
	[c_1].[ID] > 1000

