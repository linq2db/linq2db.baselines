-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_bc2279c7558a]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_bc2279c7558a](item)

-- SqlServer.2022

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
			[tempdb]..[#T_bc2279c7558a] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_bc2279c7558a]

