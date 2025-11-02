-- SqlServer.2022

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 1000

-- SqlServer.2022
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

-- SqlServer.2022

SELECT TOP (1)
	[t].[ID],
	[t].[BigIntValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1001

-- SqlServer.2022

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 1000

