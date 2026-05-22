-- SqlServer.2025

CREATE TABLE [tempdb]..[#T_9b5235784647]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_9b5235784647](item)

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
			[tempdb]..[#T_9b5235784647] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_9b5235784647]

