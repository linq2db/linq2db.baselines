-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Two] <> [i].[One] * 2 OR [i].[Three] <> [i].[Four] - 1

-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Four] <> [i].[Three]

-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Nil] <> [i].[Two]

-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	1 <> [i].[One] OR [i].[Nil] <> [i].[Nil] OR 4 <> [i].[Three]

-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	1 <> [i].[One] OR NULL >= [i].[Nil] OR 4 <> [i].[Three]

