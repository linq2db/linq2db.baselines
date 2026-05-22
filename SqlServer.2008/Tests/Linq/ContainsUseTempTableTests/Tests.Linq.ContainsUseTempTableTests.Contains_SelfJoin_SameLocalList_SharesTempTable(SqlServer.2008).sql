-- SqlServer.2008

CREATE TABLE [tempdb]..[#T_4933c4555fd5]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_4933c4555fd5](item)

-- SqlServer.2008

SELECT
	[a].[Id],
	[b].[Id]
FROM
	[ContainsTempTableTestRow] [a],
	[ContainsTempTableTestRow] [b]
WHERE
	[a].[Id] IN (
		SELECT
			[t1].[item]
		FROM
			[tempdb]..[#T_4933c4555fd5] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_4933c4555fd5] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_4933c4555fd5]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_4933c4555fd5]

