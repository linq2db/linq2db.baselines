-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_06df8ac7bd68]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_06df8ac7bd68](item)

-- SqlServer.SA.MS SqlServer.2019

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
			[tempdb]..[#T_06df8ac7bd68] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_06df8ac7bd68]

