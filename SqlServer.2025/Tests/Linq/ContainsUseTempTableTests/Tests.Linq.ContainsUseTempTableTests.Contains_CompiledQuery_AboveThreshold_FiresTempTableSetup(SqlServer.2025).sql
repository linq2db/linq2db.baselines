-- SqlServer.2025

CREATE TABLE [tempdb]..[#T_ed169a8b8b31]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_ed169a8b8b31](item)

-- SqlServer.2025

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_ed169a8b8b31] [t1]

-- SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_ed169a8b8b31]

