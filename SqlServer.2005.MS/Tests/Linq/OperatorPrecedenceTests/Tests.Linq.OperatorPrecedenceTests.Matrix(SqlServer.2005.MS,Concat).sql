-- SqlServer.2005.MS SqlServer.2005
SELECT
	Coalesce([r].[S], N'') + CAST([r].[A] + [r].[B] AS NVarChar(10)),
	CAST([r].[A] + [r].[B] AS NVarChar(10)) + Coalesce([r].[S], N''),
	Coalesce([r].[S], N'') + N',' + CAST([r].[B] + [r].[C] AS VarChar(11)) + N',' + CAST([r].[C] AS VarChar(11)),
	Coalesce([r].[S], N'') + Coalesce([r].[S], N'') + CAST([r].[A] + [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], N'') + CAST([r].[A] - [r].[B] AS NVarChar(10)),
	CAST([r].[A] - [r].[B] AS NVarChar(10)) + Coalesce([r].[S], N''),
	Coalesce([r].[S], N'') + N',' + CAST([r].[B] - [r].[C] AS VarChar(11)) + N',' + CAST([r].[C] AS VarChar(11)),
	Coalesce([r].[S], N'') + Coalesce([r].[S], N'') + CAST([r].[A] - [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], N'') + CAST([r].[A] * [r].[B] AS NVarChar(10)),
	CAST([r].[A] * [r].[B] AS NVarChar(10)) + Coalesce([r].[S], N''),
	Coalesce([r].[S], N'') + N',' + CAST([r].[B] * [r].[C] AS VarChar(11)) + N',' + CAST([r].[C] AS VarChar(11)),
	Coalesce([r].[S], N'') + Coalesce([r].[S], N'') + CAST([r].[A] * [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], N'') + CAST([r].[A] / [r].[B] AS NVarChar(10)),
	CAST([r].[A] / [r].[B] AS NVarChar(10)) + Coalesce([r].[S], N''),
	Coalesce([r].[S], N'') + N',' + CAST([r].[B] / [r].[C] AS VarChar(11)) + N',' + CAST([r].[C] AS VarChar(11)),
	Coalesce([r].[S], N'') + Coalesce([r].[S], N'') + CAST([r].[A] / [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], N'') + CAST([r].[A] % [r].[B] AS NVarChar(10)),
	CAST([r].[A] % [r].[B] AS NVarChar(10)) + Coalesce([r].[S], N''),
	Coalesce([r].[S], N'') + N',' + CAST([r].[B] % [r].[C] AS VarChar(11)) + N',' + CAST([r].[C] AS VarChar(11)),
	Coalesce([r].[S], N'') + Coalesce([r].[S], N'') + CAST([r].[A] % [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], N'') + CAST([r].[A] & [r].[B] AS NVarChar(10)),
	CAST([r].[A] & [r].[B] AS NVarChar(10)) + Coalesce([r].[S], N''),
	Coalesce([r].[S], N'') + N',' + CAST([r].[B] & [r].[C] AS VarChar(11)) + N',' + CAST([r].[C] AS VarChar(11)),
	Coalesce([r].[S], N'') + Coalesce([r].[S], N'') + CAST([r].[A] & [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], N'') + CAST([r].[A] | [r].[B] AS NVarChar(10)),
	CAST([r].[A] | [r].[B] AS NVarChar(10)) + Coalesce([r].[S], N''),
	Coalesce([r].[S], N'') + N',' + CAST([r].[B] | [r].[C] AS VarChar(11)) + N',' + CAST([r].[C] AS VarChar(11)),
	Coalesce([r].[S], N'') + Coalesce([r].[S], N'') + CAST([r].[A] | [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], N'') + CAST([r].[A] ^ [r].[B] AS NVarChar(10)),
	CAST([r].[A] ^ [r].[B] AS NVarChar(10)) + Coalesce([r].[S], N''),
	Coalesce([r].[S], N'') + N',' + CAST([r].[B] ^ [r].[C] AS VarChar(11)) + N',' + CAST([r].[C] AS VarChar(11)),
	Coalesce([r].[S], N'') + Coalesce([r].[S], N'') + CAST([r].[A] ^ [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], N'') + CAST(-[r].[A] AS NVarChar(10)),
	CAST(-[r].[A] AS NVarChar(10)) + Coalesce([r].[S], N''),
	Coalesce([r].[S], N'') + CAST(~[r].[A] AS NVarChar(10)),
	CAST(~[r].[A] AS NVarChar(10)) + Coalesce([r].[S], N''),
	Coalesce([r].[S], N'') + N'-5',
	N'-5' + Coalesce([r].[S], N'')
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- SqlServer.2005.MS SqlServer.2005
SELECT
	Coalesce([r].[S], N'') + N'-5',
	N'-5' + Coalesce([r].[S], N'')
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

