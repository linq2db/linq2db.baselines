-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [tempdb]..[#T_3899d73b659a]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_3899d73b659a](item)

-- SqlServer.2025.MS SqlServer.2025

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_3899d73b659a] [t1]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_3899d73b659a]

