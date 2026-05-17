-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [tempdb]..[#dtmp]
(
	[Value] Decimal(38, 37) NOT NULL
)

INSERT BULK [tempdb]..[#dtmp](Value)

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[Value]
FROM
	[tempdb]..[#dtmp] [t1]

-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#dtmp]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#dtmp]

