-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_c4d1af9527bc]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_c4d1af9527bc](item)

-- SqlServer.Contained.MS SqlServer.2019

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
			[tempdb]..[#T_c4d1af9527bc] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_c4d1af9527bc]

