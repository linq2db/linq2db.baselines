BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One], [i].[Two]) = (1, [i].[One] * 2)

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One], [i].[Two], [i].[Three]) = ([i].[One], [i].[One] * 2, [i].[Four] - 1) OR
	([i].[One], [i].[Two], [i].[Three]) = (0, 7, 9) OR
	([i].[One], [i].[Two], [i].[Three]) = (NULL, -1, [i].[Four])

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[One], [i].[Two], [i].[Four]) = ([i].[One], [i].[One] * 2, [i].[Four] - 1) OR
	([i].[One], [i].[Two], [i].[Four]) = (0, 7, 9) OR ([i].[One], [i].[Two], [i].[Four]) = (NULL, 2, [i].[Four])

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Nil], [i].[Two], [i].[Four]) = ([i].[One], [i].[One] * 2, [i].[Four] - 1) OR
	([i].[Nil], [i].[Two], [i].[Four]) = (0, 7, 9) OR ([i].[Nil], [i].[Two], [i].[Four]) = (NULL, 2, [i].[Four])

