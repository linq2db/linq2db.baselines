-- SqlServer.2017.MS SqlServer.2017

CREATE TABLE [tempdb]..[#dtmp]
(
	[Value] Decimal(38, 37)     NULL
)

INSERT BULK [tempdb]..[#dtmp](Value)

-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[Value]
FROM
	[tempdb]..[#dtmp] [t1]

-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#dtmp]

