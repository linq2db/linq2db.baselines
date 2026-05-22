-- SqlServer.2025

CREATE TABLE [tempdb]..[#T_685431c7039e]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_685431c7039e](item)

-- SqlServer.2025

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_685431c7039e] [t1]

-- SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_685431c7039e]

