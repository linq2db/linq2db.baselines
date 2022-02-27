BeforeExecute
-- SqlServer.2014 SqlServer.2012

DELETE [t1]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] >= 1000

BeforeExecute
-- SqlServer.2014 SqlServer.2012
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
-- SqlServer.2014 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t].[ID],
	[t].[BigIntValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1001

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DELETE [t1]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] >= 1000

