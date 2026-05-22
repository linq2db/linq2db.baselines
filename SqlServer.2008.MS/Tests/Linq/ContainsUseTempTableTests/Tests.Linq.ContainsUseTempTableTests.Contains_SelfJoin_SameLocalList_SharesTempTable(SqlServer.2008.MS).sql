-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [tempdb]..[#T_33aa6e86f45b]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_33aa6e86f45b](item)

-- SqlServer.2008.MS SqlServer.2008

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
			[tempdb]..[#T_33aa6e86f45b] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_33aa6e86f45b] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_33aa6e86f45b]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_33aa6e86f45b]

