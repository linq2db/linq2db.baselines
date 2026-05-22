-- SqlServer.2025

CREATE TABLE [tempdb]..[#T_c4dadd02dc80]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_c4dadd02dc80](item)

-- SqlServer.2025

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_c4dadd02dc80] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_c4dadd02dc80]

