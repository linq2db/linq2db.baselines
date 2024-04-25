BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

DELETE [c_1]
FROM
	[LinqDataTypes] [c_1]
WHERE
	[c_1].[ID] > 1000

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 1

INSERT INTO [LinqDataTypes]
(
	[ID],
	[GuidValue],
	[BoolValue]
)
SELECT
	CAST(Floor([t2].[c1] + 1001) AS Int),
	NewID(),
	@BoolValue
FROM
	(
		SELECT DISTINCT
			Floor(CAST([t1].[ID] AS Float) / 3) as [c1]
		FROM
			[LinqDataTypes] [t1]
	) [t2]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

DELETE [c_1]
FROM
	[LinqDataTypes] [c_1]
WHERE
	[c_1].[ID] > 1000

