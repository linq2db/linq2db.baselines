-- SqlServer.2016

CREATE TABLE [tempdb]..[#dtmp]
(
	[Value] Decimal(38, 37) NOT NULL
)

INSERT BULK [tempdb]..[#dtmp](Value)

-- SqlServer.2016

SELECT
	[t1].[Value]
FROM
	[tempdb]..[#dtmp] [t1]

-- SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#dtmp]

