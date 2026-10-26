-- SqlServer.CS.MS SqlServer.2025
CREATE TABLE [tempdb]..[#dtmp]
(
	[Value] Decimal(38, 37) NOT NULL
)

INSERT BULK [tempdb]..[#dtmp](Value)

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[Value]
FROM
	[tempdb]..[#dtmp] [t1]

-- SqlServer.CS.MS SqlServer.2025
DROP TABLE IF EXISTS [tempdb]..[#dtmp]

