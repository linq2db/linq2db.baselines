-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [tempdb]..[#T_023d7d3bc1bb]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_023d7d3bc1bb](item)

-- SqlServer.2025.MS SqlServer.2025

SELECT
	[r].[Id],
	[r].[Name],
	[r].[Tag]
FROM
	[ContainsTempTableTestRow] [r]
WHERE
	[r].[Id] IN (
		SELECT
			[t1].[item]
		FROM
			[tempdb]..[#T_023d7d3bc1bb] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_023d7d3bc1bb]

