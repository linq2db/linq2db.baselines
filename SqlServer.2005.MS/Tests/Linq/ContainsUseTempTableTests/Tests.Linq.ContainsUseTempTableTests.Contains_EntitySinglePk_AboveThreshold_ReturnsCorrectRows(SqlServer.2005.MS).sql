-- SqlServer.2005.MS SqlServer.2005

CREATE TABLE [tempdb]..[#T_bd29acf0b3ff]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000)     NULL,
	[Tag]  NVarChar(4000)     NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [tempdb]..[#T_bd29acf0b3ff]
(
	[Id],
	[Name],
	[Tag]
)
SELECT 1,N'row1',N'tag1' UNION ALL
SELECT 2,N'row2',N'tag2' UNION ALL
SELECT 3,N'row3',NULL UNION ALL
SELECT 4,N'row4',N'tag4' UNION ALL
SELECT 5,N'row5',N'tag5' UNION ALL
SELECT 6,N'row6',NULL UNION ALL
SELECT 7,N'row7',N'tag7' UNION ALL
SELECT 8,N'row8',N'tag8' UNION ALL
SELECT 9,N'row9',NULL UNION ALL
SELECT 10,N'row10',N'tag10' UNION ALL
SELECT 11,N'row11',N'tag11' UNION ALL
SELECT 12,N'row12',NULL UNION ALL
SELECT 13,N'row13',N'tag13' UNION ALL
SELECT 14,N'row14',N'tag14' UNION ALL
SELECT 15,N'row15',NULL UNION ALL
SELECT 16,N'row16',N'tag16' UNION ALL
SELECT 17,N'row17',N'tag17' UNION ALL
SELECT 18,N'row18',NULL UNION ALL
SELECT 19,N'row19',N'tag19' UNION ALL
SELECT 20,N'row20',N'tag20'

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[r].[Id],
	[r].[Name],
	[r].[Tag]
FROM
	[ContainsTempTableTestRow] [r]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[tempdb]..[#T_bd29acf0b3ff] [t1]
		WHERE
			[r].[Id] = [t1].[Id]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_bd29acf0b3ff]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_bd29acf0b3ff]

