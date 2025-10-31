-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Ints] [i]
WHERE
	[i].[Two] <> [i].[One] * 2 OR [i].[Three] <> [i].[Four] - 1

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Ints] [i]
WHERE
	[i].[Four] <> [i].[Three]

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Ints] [i]
WHERE
	[i].[Nil] <> [i].[Two]

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Ints] [i]
WHERE
	1 <> [i].[One] OR [i].[Nil] <> [i].[Nil] OR 4 <> [i].[Three]

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Ints] [i]
WHERE
	1 <> [i].[One] OR NULL >= [i].[Nil] OR 4 <> [i].[Three]

