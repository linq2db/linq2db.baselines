BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Two] <> [i].[One] * 2 OR [i].[Three] <> [i].[Four] - 1

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Four] <> [i].[Three]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Nil] <> [i].[Two]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	1 <> [i].[One] OR [i].[Nil] <> [i].[Nil] OR 4 <> [i].[Three]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	1 <> [i].[One] OR NULL >= [i].[Nil] OR 4 <> [i].[Three]

