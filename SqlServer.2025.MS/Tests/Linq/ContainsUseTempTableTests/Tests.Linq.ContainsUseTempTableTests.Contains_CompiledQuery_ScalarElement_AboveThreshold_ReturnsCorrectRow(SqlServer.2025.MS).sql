-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [tempdb]..[#T_9632a0431ab1]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_9632a0431ab1](item)

-- SqlServer.2025.MS SqlServer.2025

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_9632a0431ab1] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_9632a0431ab1]

