-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	~([r].[A] + [r].[B]),
	~([r].[A] + [r].[B]),
	~([r].[A] - [r].[B]),
	~([r].[A] - [r].[B]),
	~([r].[A] * [r].[B]),
	~([r].[A] * [r].[B]),
	~([r].[A] / [r].[B]),
	~([r].[A] / [r].[B]),
	~([r].[A] & [r].[B]),
	~([r].[A] & [r].[B]),
	~([r].[A] | [r].[B]),
	~([r].[A] | [r].[B]),
	~(-[r].[B]),
	~(~[r].[B]),
	~(-5),
	~(-5 * [r].[B])
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	~(-5)
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

