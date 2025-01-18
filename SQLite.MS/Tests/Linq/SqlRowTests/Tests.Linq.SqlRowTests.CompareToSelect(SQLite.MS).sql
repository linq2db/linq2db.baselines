BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [x],
	[Ints2] [y]
WHERE
	([x].[One], [x].[Two], [x].[Nil]) > ([y].[One], [y].[One], 3) AND
	[y].[Nil] IS NULL

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [x],
	[Ints2] [y]
WHERE
	([x].[One], [x].[Two], [x].[Three]) >= ([y].[One], [y].[One] + 1, 3) AND
	[y].[Nil] IS NULL

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [x],
	[Ints2] [y]
WHERE
	([x].[One], [x].[Two], [x].[Nil]) < ([y].[One], [y].[Three], 3) AND
	[y].[Nil] IS NULL

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [x],
	[Ints2] [y]
WHERE
	([x].[One], [x].[Two], [x].[Three]) <= ([y].[One], [y].[One] + 1, 3) AND
	[y].[Nil] IS NULL

