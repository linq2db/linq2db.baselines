-- SqlServer.2005.MS SqlServer.2005

CREATE TABLE [tempdb]..[#dtmp]
(
	[Value] Decimal(38, 37)     NULL
)

-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [tempdb]..[#dtmp]
(
	[Value]
)
SELECT 0.1

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Value]
FROM
	[tempdb]..[#dtmp] [t1]

-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#dtmp]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#dtmp]

