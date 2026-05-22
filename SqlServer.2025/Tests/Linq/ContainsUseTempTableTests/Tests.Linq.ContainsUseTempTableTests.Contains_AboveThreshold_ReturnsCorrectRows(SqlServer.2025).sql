-- SqlServer.2025

CREATE TABLE [tempdb]..[#T_15f2e738763e]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_15f2e738763e](item)

-- SqlServer.2025

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
			[tempdb]..[#T_15f2e738763e] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_15f2e738763e]

