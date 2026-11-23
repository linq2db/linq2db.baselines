-- Sybase.Managed Sybase
SELECT
	Coalesce([r].[S], '') || CAST([r].[A] + [r].[B] AS NVarChar(10)),
	CAST([r].[A] + [r].[B] AS NVarChar(10)) || Coalesce([r].[S], ''),
	Coalesce([r].[S], '') || ',' || CAST([r].[B] + [r].[C] AS VarChar(11)) || ',' || CAST([r].[C] AS VarChar(11)),
	Coalesce([r].[S], '') || Coalesce([r].[S], '') || CAST([r].[A] + [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], '') || CAST([r].[A] - [r].[B] AS NVarChar(10)),
	CAST([r].[A] - [r].[B] AS NVarChar(10)) || Coalesce([r].[S], ''),
	Coalesce([r].[S], '') || ',' || CAST([r].[B] - [r].[C] AS VarChar(11)) || ',' || CAST([r].[C] AS VarChar(11)),
	Coalesce([r].[S], '') || Coalesce([r].[S], '') || CAST([r].[A] - [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], '') || CAST([r].[A] * [r].[B] AS NVarChar(10)),
	CAST([r].[A] * [r].[B] AS NVarChar(10)) || Coalesce([r].[S], ''),
	Coalesce([r].[S], '') || ',' || CAST([r].[B] * [r].[C] AS VarChar(11)) || ',' || CAST([r].[C] AS VarChar(11)),
	Coalesce([r].[S], '') || Coalesce([r].[S], '') || CAST([r].[A] * [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], '') || CAST([r].[A] / [r].[B] AS NVarChar(10)),
	CAST([r].[A] / [r].[B] AS NVarChar(10)) || Coalesce([r].[S], ''),
	Coalesce([r].[S], '') || ',' || CAST([r].[B] / [r].[C] AS VarChar(11)) || ',' || CAST([r].[C] AS VarChar(11)),
	Coalesce([r].[S], '') || Coalesce([r].[S], '') || CAST([r].[A] / [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], '') || CAST([r].[A] % [r].[B] AS NVarChar(10)),
	CAST([r].[A] % [r].[B] AS NVarChar(10)) || Coalesce([r].[S], ''),
	Coalesce([r].[S], '') || ',' || CAST([r].[B] % [r].[C] AS VarChar(11)) || ',' || CAST([r].[C] AS VarChar(11)),
	Coalesce([r].[S], '') || Coalesce([r].[S], '') || CAST([r].[A] % [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], '') || CAST([r].[A] & [r].[B] AS NVarChar(10)),
	CAST([r].[A] & [r].[B] AS NVarChar(10)) || Coalesce([r].[S], ''),
	Coalesce([r].[S], '') || ',' || CAST([r].[B] & [r].[C] AS VarChar(11)) || ',' || CAST([r].[C] AS VarChar(11)),
	Coalesce([r].[S], '') || Coalesce([r].[S], '') || CAST([r].[A] & [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], '') || CAST([r].[A] | [r].[B] AS NVarChar(10)),
	CAST([r].[A] | [r].[B] AS NVarChar(10)) || Coalesce([r].[S], ''),
	Coalesce([r].[S], '') || ',' || CAST([r].[B] | [r].[C] AS VarChar(11)) || ',' || CAST([r].[C] AS VarChar(11)),
	Coalesce([r].[S], '') || Coalesce([r].[S], '') || CAST([r].[A] | [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], '') || CAST([r].[A] ^ [r].[B] AS NVarChar(10)),
	CAST([r].[A] ^ [r].[B] AS NVarChar(10)) || Coalesce([r].[S], ''),
	Coalesce([r].[S], '') || ',' || CAST([r].[B] ^ [r].[C] AS VarChar(11)) || ',' || CAST([r].[C] AS VarChar(11)),
	Coalesce([r].[S], '') || Coalesce([r].[S], '') || CAST([r].[A] ^ [r].[B] AS NVarChar(10)),
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

-- Sybase.Managed Sybase
SELECT
	Coalesce([r].[S], '') || '-5',
	'-5' || Coalesce([r].[S], '')
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

