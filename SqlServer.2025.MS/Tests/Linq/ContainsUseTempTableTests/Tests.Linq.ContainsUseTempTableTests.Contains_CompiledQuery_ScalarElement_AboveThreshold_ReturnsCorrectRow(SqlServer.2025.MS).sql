-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [tempdb]..[#T_ed0b7cbae419]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_ed0b7cbae419](item)

-- SqlServer.2025.MS SqlServer.2025

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_ed0b7cbae419] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_ed0b7cbae419]

