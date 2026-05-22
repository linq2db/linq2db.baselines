-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [tempdb]..[#T_a34456646afe]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_a34456646afe](item)

-- SqlServer.2012.MS SqlServer.2012

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
			[tempdb]..[#T_a34456646afe] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_a34456646afe]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_a34456646afe]

-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [tempdb]..[#T_a34456646afe]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_a34456646afe](item)

-- SqlServer.2012.MS SqlServer.2012

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
			[tempdb]..[#T_a34456646afe] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_a34456646afe]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_a34456646afe]

