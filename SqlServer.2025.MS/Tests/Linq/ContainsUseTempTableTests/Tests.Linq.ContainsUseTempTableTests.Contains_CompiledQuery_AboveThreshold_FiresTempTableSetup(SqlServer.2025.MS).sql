-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [tempdb]..[#T_c47644eee1bb]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_c47644eee1bb](item)

-- SqlServer.2025.MS SqlServer.2025

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_c47644eee1bb] [t1]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_c47644eee1bb]

