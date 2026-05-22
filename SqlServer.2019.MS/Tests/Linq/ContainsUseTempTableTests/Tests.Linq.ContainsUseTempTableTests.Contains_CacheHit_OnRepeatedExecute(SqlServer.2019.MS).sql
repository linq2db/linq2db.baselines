-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_bcc809327037]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_bcc809327037](item)

-- SqlServer.2019.MS SqlServer.2019

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
			[tempdb]..[#T_bcc809327037] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_bcc809327037]

-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_bcc809327037]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_bcc809327037](item)

-- SqlServer.2019.MS SqlServer.2019

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
			[tempdb]..[#T_bcc809327037] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_bcc809327037]

