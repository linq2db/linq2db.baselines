-- SqlServer.2025

CREATE TABLE [tempdb]..[#T_efdd2a422e69]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_efdd2a422e69](item)

-- SqlServer.2025

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_efdd2a422e69] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_efdd2a422e69]

