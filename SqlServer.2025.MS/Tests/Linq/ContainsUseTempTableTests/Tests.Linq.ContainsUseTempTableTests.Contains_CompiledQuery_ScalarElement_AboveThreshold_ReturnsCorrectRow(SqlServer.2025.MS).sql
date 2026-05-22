-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [tempdb]..[#T_99c5176f5200]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_99c5176f5200](item)

-- SqlServer.2025.MS SqlServer.2025

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_99c5176f5200] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_99c5176f5200]

