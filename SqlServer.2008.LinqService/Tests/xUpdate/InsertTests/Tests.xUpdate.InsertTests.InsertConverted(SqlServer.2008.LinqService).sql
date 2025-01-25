BeforeExecute
-- SqlServer.2008

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 1000

BeforeExecute
-- SqlServer.2008
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
-- SqlServer.2008

SELECT TOP (1)
	[t].[ID],
	[t].[BigIntValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1001

BeforeExecute
-- SqlServer.2008

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 1000

