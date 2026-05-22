-- SqlServer.2016.MS SqlServer.2016

CREATE TABLE [tempdb]..[#T_cc8122274e8f]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_cc8122274e8f](item)

-- SqlServer.2016.MS SqlServer.2016

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
			[tempdb]..[#T_cc8122274e8f] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_cc8122274e8f] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_cc8122274e8f]

