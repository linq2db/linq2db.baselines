-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_84899996d93c]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_84899996d93c](item)

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
			[tempdb]..[#T_84899996d93c] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_84899996d93c]

