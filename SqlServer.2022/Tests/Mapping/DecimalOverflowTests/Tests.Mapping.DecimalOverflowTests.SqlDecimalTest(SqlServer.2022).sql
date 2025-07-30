BeforeExecute
-- SqlServer.2022

CREATE TABLE [tempdb]..[#dtmp]
(
	[Value] Decimal(38, 37)     NULL
)

BeforeExecute
INSERT BULK [tempdb]..[#dtmp](Value)

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Value]
FROM
	[tempdb]..[#dtmp] [t1]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#dtmp]

