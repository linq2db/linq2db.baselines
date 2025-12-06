-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [tempdb]..[#dtmp]
(
	[Value] Decimal(38, 37) NOT NULL
)

INSERT BULK [tempdb]..[#dtmp](Value)

-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[Value]
FROM
	[tempdb]..[#dtmp] [t1]

-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#dtmp]

