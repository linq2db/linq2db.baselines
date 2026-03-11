-- SqlServer.Contained.MS SqlServer.2019

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 1000

-- SqlServer.Contained.MS SqlServer.2019
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

-- SqlServer.Contained.MS SqlServer.2019

SELECT TOP (1)
	[t].[ID],
	[t].[BigIntValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1001

-- SqlServer.Contained.MS SqlServer.2019

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 1000

