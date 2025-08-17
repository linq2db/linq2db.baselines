BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Ints] [i]
WHERE
	[i].[One] = 1 AND [i].[Two] = [i].[One] * 2

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Ints] [i]
WHERE
	[i].[Two] = [i].[One] * 2 AND [i].[Three] = [i].[Four] - 1 OR
	[i].[One] = 0 AND [i].[Two] = 7 AND [i].[Three] = 9 OR
	[i].[One] >= NULL AND [i].[Two] = -1 AND [i].[Three] = [i].[Four]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Ints] [i]
WHERE
	[i].[Two] = [i].[One] * 2 AND [i].[Four] = [i].[Four] - 1 OR
	[i].[One] = 0 AND [i].[Two] = 7 AND [i].[Four] = 9 OR
	[i].[One] >= NULL AND [i].[Two] = 2

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Ints] [i]
WHERE
	[i].[Nil] = [i].[One] AND [i].[Two] = [i].[One] * 2 AND [i].[Four] = [i].[Four] - 1 OR
	[i].[Nil] = 0 AND [i].[Two] = 7 AND [i].[Four] = 9 OR
	[i].[Nil] >= NULL AND [i].[Two] = 2

