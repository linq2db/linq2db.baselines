BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [tempdb]..[#dtmp]
(
	[Value] Decimal(38, 37) NOT NULL
)

BeforeExecute
INSERT BULK [tempdb]..[#dtmp](Value)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	[tempdb]..[#dtmp] [t1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#dtmp]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#dtmp]

