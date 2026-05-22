-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [tempdb]..[#T_728bcf8ce7e9]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_728bcf8ce7e9](item)

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
			[tempdb]..[#T_728bcf8ce7e9] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_728bcf8ce7e9] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_728bcf8ce7e9]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_728bcf8ce7e9]

