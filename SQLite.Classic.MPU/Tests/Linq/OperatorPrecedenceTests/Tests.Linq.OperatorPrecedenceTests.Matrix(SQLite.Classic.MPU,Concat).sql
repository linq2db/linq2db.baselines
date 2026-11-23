-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	Coalesce([r].[S], '') || CAST([r].[A] + [r].[B] AS NVarChar(10)),
	CAST([r].[A] + [r].[B] AS NVarChar(10)) || Coalesce([r].[S], ''),
	Coalesce([r].[S], '') || ',' || ([r].[B] + [r].[C]) || ',' || [r].[C],
	Coalesce([r].[S], '') || Coalesce([r].[S], '') || CAST([r].[A] + [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], '') || ',' || -([r].[B] + [r].[C]) || ',' || [r].[C],
	Coalesce([r].[S], '') || ',' || ~([r].[B] + [r].[C]) || ',' || [r].[C],
	Coalesce([r].[S], '') || CAST([r].[A] - [r].[B] AS NVarChar(10)),
	CAST([r].[A] - [r].[B] AS NVarChar(10)) || Coalesce([r].[S], ''),
	Coalesce([r].[S], '') || ',' || ([r].[B] - [r].[C]) || ',' || [r].[C],
	Coalesce([r].[S], '') || Coalesce([r].[S], '') || CAST([r].[A] - [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], '') || ',' || -([r].[B] - [r].[C]) || ',' || [r].[C],
	Coalesce([r].[S], '') || ',' || ~([r].[B] - [r].[C]) || ',' || [r].[C],
	Coalesce([r].[S], '') || CAST([r].[A] * [r].[B] AS NVarChar(10)),
	CAST([r].[A] * [r].[B] AS NVarChar(10)) || Coalesce([r].[S], ''),
	Coalesce([r].[S], '') || ',' || ([r].[B] * [r].[C]) || ',' || [r].[C],
	Coalesce([r].[S], '') || Coalesce([r].[S], '') || CAST([r].[A] * [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], '') || ',' || -([r].[B] * [r].[C]) || ',' || [r].[C],
	Coalesce([r].[S], '') || ',' || ~([r].[B] * [r].[C]) || ',' || [r].[C],
	Coalesce([r].[S], '') || CAST([r].[A] / [r].[B] AS NVarChar(10)),
	CAST([r].[A] / [r].[B] AS NVarChar(10)) || Coalesce([r].[S], ''),
	Coalesce([r].[S], '') || ',' || ([r].[B] / [r].[C]) || ',' || [r].[C],
	Coalesce([r].[S], '') || Coalesce([r].[S], '') || CAST([r].[A] / [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], '') || ',' || -([r].[B] / [r].[C]) || ',' || [r].[C],
	Coalesce([r].[S], '') || ',' || ~([r].[B] / [r].[C]) || ',' || [r].[C],
	Coalesce([r].[S], '') || CAST([r].[A] % [r].[B] AS NVarChar(10)),
	CAST([r].[A] % [r].[B] AS NVarChar(10)) || Coalesce([r].[S], ''),
	Coalesce([r].[S], '') || ',' || ([r].[B] % [r].[C]) || ',' || [r].[C],
	Coalesce([r].[S], '') || Coalesce([r].[S], '') || CAST([r].[A] % [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], '') || ',' || -([r].[B] % [r].[C]) || ',' || [r].[C],
	Coalesce([r].[S], '') || ',' || ~([r].[B] % [r].[C]) || ',' || [r].[C],
	Coalesce([r].[S], '') || CAST([r].[A] & [r].[B] AS NVarChar(10)),
	CAST([r].[A] & [r].[B] AS NVarChar(10)) || Coalesce([r].[S], ''),
	Coalesce([r].[S], '') || ',' || ([r].[B] & [r].[C]) || ',' || [r].[C],
	Coalesce([r].[S], '') || Coalesce([r].[S], '') || CAST([r].[A] & [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], '') || ',' || -([r].[B] & [r].[C]) || ',' || [r].[C],
	Coalesce([r].[S], '') || ',' || ~([r].[B] & [r].[C]) || ',' || [r].[C],
	Coalesce([r].[S], '') || CAST([r].[A] | [r].[B] AS NVarChar(10)),
	CAST([r].[A] | [r].[B] AS NVarChar(10)) || Coalesce([r].[S], ''),
	Coalesce([r].[S], '') || ',' || ([r].[B] | [r].[C]) || ',' || [r].[C],
	Coalesce([r].[S], '') || Coalesce([r].[S], '') || CAST([r].[A] | [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], '') || ',' || -([r].[B] | [r].[C]) || ',' || [r].[C],
	Coalesce([r].[S], '') || ',' || ~([r].[B] | [r].[C]) || ',' || [r].[C],
	Coalesce([r].[S], '') || CAST([r].[A] + [r].[B] - ([r].[A] & [r].[B]) * 2 AS NVarChar(10)),
	CAST([r].[A] + [r].[B] - ([r].[A] & [r].[B]) * 2 AS NVarChar(10)) || Coalesce([r].[S], ''),
	Coalesce([r].[S], '') || ',' || ([r].[B] + [r].[C] - ([r].[B] & [r].[C]) * 2) || ',' || [r].[C],
	Coalesce([r].[S], '') || Coalesce([r].[S], '') || CAST([r].[A] + [r].[B] - ([r].[A] & [r].[B]) * 2 AS NVarChar(10)),
	Coalesce([r].[S], '') || ',' || -([r].[B] + [r].[C] - ([r].[B] & [r].[C]) * 2) || ',' || [r].[C],
	Coalesce([r].[S], '') || ',' || ~([r].[B] + [r].[C] - ([r].[B] & [r].[C]) * 2) || ',' || [r].[C],
	Coalesce([r].[S], '') || CAST(-[r].[A] AS NVarChar(10)),
	CAST(-[r].[A] AS NVarChar(10)) || Coalesce([r].[S], ''),
	Coalesce([r].[S], '') || CAST(~[r].[A] AS NVarChar(10)),
	CAST(~[r].[A] AS NVarChar(10)) || Coalesce([r].[S], ''),
	Coalesce([r].[S], '') || '-5',
	'-5' || Coalesce([r].[S], '')
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	Coalesce([r].[S], '') || '-5',
	'-5' || Coalesce([r].[S], '')
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

