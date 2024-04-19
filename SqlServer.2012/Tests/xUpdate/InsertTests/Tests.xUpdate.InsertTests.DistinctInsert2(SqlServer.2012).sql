BeforeExecute
-- SqlServer.2012

DELETE [c_1]
FROM
	[LinqDataTypes] [c_1]
WHERE
	[c_1].[ID] > 1000

BeforeExecute
-- SqlServer.2012
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 1

INSERT INTO [LinqDataTypes]
(
	[ID],
	[GuidValue],
	[BoolValue]
)
SELECT
	CAST(Floor([t1].[c1] + 1001) AS Int),
	NewID(),
	@BoolValue
FROM
	(
		SELECT DISTINCT
			Floor(CAST([_].[ID] AS Float) / 3) as [c1]
		FROM
			[LinqDataTypes] [_]
	) [t1]

BeforeExecute
-- SqlServer.2012

DELETE [c_1]
FROM
	[LinqDataTypes] [c_1]
WHERE
	[c_1].[ID] > 1000

