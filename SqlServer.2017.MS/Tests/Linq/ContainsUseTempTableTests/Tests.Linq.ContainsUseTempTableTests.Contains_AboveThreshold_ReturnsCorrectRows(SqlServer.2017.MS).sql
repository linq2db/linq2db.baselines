-- SqlServer.2017.MS SqlServer.2017

CREATE TABLE [tempdb]..[#T_3b9e3e187cc9]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_3b9e3e187cc9](item)

-- SqlServer.2017.MS SqlServer.2017

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
			[tempdb]..[#T_3b9e3e187cc9] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_3b9e3e187cc9]

