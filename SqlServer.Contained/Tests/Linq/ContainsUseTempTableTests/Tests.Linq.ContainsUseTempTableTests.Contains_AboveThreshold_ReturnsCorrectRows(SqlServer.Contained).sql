-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#T_b0cac9e1f766]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_b0cac9e1f766](item)

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
			[tempdb]..[#T_b0cac9e1f766] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_b0cac9e1f766]

