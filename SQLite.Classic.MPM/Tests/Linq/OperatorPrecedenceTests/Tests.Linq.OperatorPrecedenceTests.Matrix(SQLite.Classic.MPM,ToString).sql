-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	CAST([r].[A] + [r].[B] AS NVarChar(11)),
	CAST([r].[A] - [r].[B] AS NVarChar(11)),
	CAST([r].[A] * [r].[B] AS NVarChar(11)),
	CAST([r].[A] / [r].[B] AS NVarChar(11)),
	CAST([r].[A] % [r].[B] AS NVarChar(11)),
	CAST([r].[A] & [r].[B] AS NVarChar(11)),
	CAST([r].[A] | [r].[B] AS NVarChar(11)),
	CAST([r].[A] + [r].[B] - ([r].[A] & [r].[B]) * 2 AS NVarChar(11)),
	CAST(-[r].[A] AS NVarChar(11)),
	CAST(~[r].[A] AS NVarChar(11))
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

