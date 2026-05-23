-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#T_4df6bd0ca46e]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_4df6bd0ca46e](item)

-- SqlServer.Contained SqlServer.2019

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
			[tempdb]..[#T_4df6bd0ca46e] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_4df6bd0ca46e]

