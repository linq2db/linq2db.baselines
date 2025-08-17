BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 1000

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)
DECLARE @tt BigInt -- Int64
SET     @tt = 600000000

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BigIntValue]
)
VALUES
(
	1001,
	@tt
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)

SELECT TOP (1)
	[t].[ID],
	[t].[BigIntValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1001

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 1000

