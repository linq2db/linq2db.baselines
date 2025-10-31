-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [tempdb]..[#dtmp]
(
	[Value] Decimal(38, 37)     NULL
)

INSERT BULK [tempdb]..[#dtmp](Value)

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[Value]
FROM
	[tempdb]..[#dtmp] [t1]

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#dtmp]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#dtmp]

