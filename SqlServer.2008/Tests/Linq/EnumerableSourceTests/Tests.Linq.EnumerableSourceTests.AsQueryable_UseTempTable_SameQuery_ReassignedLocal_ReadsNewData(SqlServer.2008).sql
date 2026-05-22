-- SqlServer.2008

CREATE TABLE [tempdb]..[#T_23d23bd67efe]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_23d23bd67efe](Id, Data)

-- SqlServer.2008

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_23d23bd67efe] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_23d23bd67efe]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_23d23bd67efe]

-- SqlServer.2008

CREATE TABLE [tempdb]..[#T_23d23bd67efe]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_23d23bd67efe](Id, Data)

-- SqlServer.2008

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_23d23bd67efe] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_23d23bd67efe]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_23d23bd67efe]

