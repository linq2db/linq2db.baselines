﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DELETE [t1]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] >= 1000

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
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
-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (1)
	[t].[ID],
	[t].[BigIntValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1001

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DELETE [t1]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] >= 1000

