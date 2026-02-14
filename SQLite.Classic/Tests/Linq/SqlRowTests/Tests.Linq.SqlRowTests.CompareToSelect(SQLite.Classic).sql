-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [x]
WHERE
	([x].[One], [x].[Two], [x].[Nil]) > (
		SELECT
			[y].[One],
			[y].[One] as [One_1],
			3 as [c1]
		FROM
			[Ints2] [y]
		WHERE
			[y].[Nil] IS NULL
	)

-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [x]
WHERE
	([x].[One], [x].[Two], [x].[Three]) >= (
		SELECT
			[y].[One],
			[y].[One] + 1 as [c1],
			3 as [c2]
		FROM
			[Ints2] [y]
		WHERE
			[y].[Nil] IS NULL
	)

-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [x]
WHERE
	([x].[One], [x].[Two], [x].[Nil]) < (
		SELECT
			[y].[One],
			[y].[Three],
			3 as [c1]
		FROM
			[Ints2] [y]
		WHERE
			[y].[Nil] IS NULL
	)

-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Ints] [x]
WHERE
	([x].[One], [x].[Two], [x].[Three]) <= (
		SELECT
			[y].[One],
			[y].[One] + 1 as [c1],
			3 as [c2]
		FROM
			[Ints2] [y]
		WHERE
			[y].[Nil] IS NULL
	)

