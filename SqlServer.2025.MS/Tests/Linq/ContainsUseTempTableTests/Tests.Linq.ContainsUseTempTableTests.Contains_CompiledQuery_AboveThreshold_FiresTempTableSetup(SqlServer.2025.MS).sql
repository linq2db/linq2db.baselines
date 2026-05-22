-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [tempdb]..[#T_7d01bc74d067]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_7d01bc74d067](item)

-- SqlServer.2025.MS SqlServer.2025

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_7d01bc74d067] [t1]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_7d01bc74d067]

