-- SqlServer.2017

CREATE TABLE [tempdb]..[#T_f05a808b3f2e]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_f05a808b3f2e](item)

-- SqlServer.2017

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
			[tempdb]..[#T_f05a808b3f2e] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_f05a808b3f2e]

