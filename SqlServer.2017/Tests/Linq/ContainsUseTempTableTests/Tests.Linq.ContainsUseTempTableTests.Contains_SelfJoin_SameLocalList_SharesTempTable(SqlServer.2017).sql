-- SqlServer.2017

CREATE TABLE [tempdb]..[#T_4158a18c1fd5]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_4158a18c1fd5](item)

-- SqlServer.2017

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
			[tempdb]..[#T_4158a18c1fd5] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_4158a18c1fd5] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_4158a18c1fd5]

