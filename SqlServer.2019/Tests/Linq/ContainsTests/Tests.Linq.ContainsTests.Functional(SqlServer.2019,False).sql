-- SqlServer.2019

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, -2)

-- SqlServer.2019

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, NULL)

-- SqlServer.2019

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, 2)

-- SqlServer.2019

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] NOT IN (NULL, 2)

-- SqlServer.2019

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] NOT IN (-1, 2)

