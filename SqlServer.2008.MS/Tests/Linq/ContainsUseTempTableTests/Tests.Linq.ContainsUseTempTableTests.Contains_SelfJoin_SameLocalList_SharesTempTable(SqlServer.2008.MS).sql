-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [tempdb]..[#T_c613fdad6e3c]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_c613fdad6e3c](item)

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
			[tempdb]..[#T_c613fdad6e3c] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_c613fdad6e3c] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_c613fdad6e3c]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_c613fdad6e3c]

