-- SqlServer.2019

CREATE TABLE [tempdb]..[#T_6416522392e4]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_6416522392e4](item)

-- SqlServer.2019

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
			[tempdb]..[#T_6416522392e4] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_6416522392e4]

