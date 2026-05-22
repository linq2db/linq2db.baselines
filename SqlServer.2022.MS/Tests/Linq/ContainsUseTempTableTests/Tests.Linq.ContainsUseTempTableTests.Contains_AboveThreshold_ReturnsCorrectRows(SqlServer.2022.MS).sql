-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#T_7946ddb09d7e]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_7946ddb09d7e](item)

-- SqlServer.2022.MS SqlServer.2022

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
			[tempdb]..[#T_7946ddb09d7e] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_7946ddb09d7e]

