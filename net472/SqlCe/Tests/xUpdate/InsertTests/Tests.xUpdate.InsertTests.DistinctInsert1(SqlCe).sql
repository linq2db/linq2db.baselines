BeforeExecute
-- SqlCe

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] > 1000

BeforeExecute
-- SQLite.Classic SQLite

SELECT 
	[t1].[ID], 
	[t1].[MoneyValue], 
	[t1].[DateTimeValue], 
	[t1].[BoolValue], 
	[t1].[GuidValue], 
	[t1].[BinaryValue], 
	[t1].[SmallIntValue], 
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlCe

INSERT INTO [LinqDataTypes]
(
	[ID],
	[GuidValue],
	[BoolValue]
)
SELECT 
	Convert(Int, [t1].[c1] + 1001), 
	NewID(), 
	1
FROM
	( 
		SELECT DISTINCT 
			Floor(Convert(Float, [_].[ID]) / 3) as [c1]
		FROM
			[LinqDataTypes] [_]
	) [t1]

BeforeExecute
-- SqlCe

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] > 1000

