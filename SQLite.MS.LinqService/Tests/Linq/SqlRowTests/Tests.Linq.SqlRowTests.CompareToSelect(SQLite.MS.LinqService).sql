BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	COUNT(*)
FROM
	[Ints] [x]
WHERE
	([x].[One], [x].[Two], [x].[Nil]) > (
		SELECT
			[y].[One],
			[y].[One],
			3
		FROM
			[Ints2] [y]
		WHERE
			[y].[Nil] IS NULL
	)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	COUNT(*)
FROM
	[Ints] [x]
WHERE
	([x].[One], [x].[Two], [x].[Three]) >= (
		SELECT
			[y].[One],
			[y].[One] + 1,
			3
		FROM
			[Ints2] [y]
		WHERE
			[y].[Nil] IS NULL
	)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	COUNT(*)
FROM
	[Ints] [x]
WHERE
	([x].[One], [x].[Two], [x].[Nil]) < (
		SELECT
			[y].[One],
			[y].[Three],
			3
		FROM
			[Ints2] [y]
		WHERE
			[y].[Nil] IS NULL
	)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	COUNT(*)
FROM
	[Ints] [x]
WHERE
	([x].[One], [x].[Two], [x].[Three]) <= (
		SELECT
			[y].[One],
			[y].[One] + 1,
			3
		FROM
			[Ints2] [y]
		WHERE
			[y].[Nil] IS NULL
	)

