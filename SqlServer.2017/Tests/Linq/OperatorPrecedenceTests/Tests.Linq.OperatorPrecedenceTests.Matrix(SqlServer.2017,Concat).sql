-- SqlServer.2017
SELECT
	Coalesce([r].[S], N'') + CAST([r].[A] + [r].[B] AS NVarChar(10)),
	CAST([r].[A] + [r].[B] AS NVarChar(10)) + Coalesce([r].[S], N''),
	CONCAT_WS(N',', Coalesce([r].[S], N''), [r].[B] + [r].[C], [r].[C]),
	Coalesce([r].[S], N'') + Coalesce([r].[S], N'') + CAST([r].[A] + [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], N'') + CAST([r].[A] - [r].[B] AS NVarChar(10)),
	CAST([r].[A] - [r].[B] AS NVarChar(10)) + Coalesce([r].[S], N''),
	CONCAT_WS(N',', Coalesce([r].[S], N''), [r].[B] - [r].[C], [r].[C]),
	Coalesce([r].[S], N'') + Coalesce([r].[S], N'') + CAST([r].[A] - [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], N'') + CAST([r].[A] * [r].[B] AS NVarChar(10)),
	CAST([r].[A] * [r].[B] AS NVarChar(10)) + Coalesce([r].[S], N''),
	CONCAT_WS(N',', Coalesce([r].[S], N''), [r].[B] * [r].[C], [r].[C]),
	Coalesce([r].[S], N'') + Coalesce([r].[S], N'') + CAST([r].[A] * [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], N'') + CAST([r].[A] / [r].[B] AS NVarChar(10)),
	CAST([r].[A] / [r].[B] AS NVarChar(10)) + Coalesce([r].[S], N''),
	CONCAT_WS(N',', Coalesce([r].[S], N''), [r].[B] / [r].[C], [r].[C]),
	Coalesce([r].[S], N'') + Coalesce([r].[S], N'') + CAST([r].[A] / [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], N'') + CAST([r].[A] % [r].[B] AS NVarChar(10)),
	CAST([r].[A] % [r].[B] AS NVarChar(10)) + Coalesce([r].[S], N''),
	CONCAT_WS(N',', Coalesce([r].[S], N''), [r].[B] % [r].[C], [r].[C]),
	Coalesce([r].[S], N'') + Coalesce([r].[S], N'') + CAST([r].[A] % [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], N'') + CAST([r].[A] & [r].[B] AS NVarChar(10)),
	CAST([r].[A] & [r].[B] AS NVarChar(10)) + Coalesce([r].[S], N''),
	CONCAT_WS(N',', Coalesce([r].[S], N''), [r].[B] & [r].[C], [r].[C]),
	Coalesce([r].[S], N'') + Coalesce([r].[S], N'') + CAST([r].[A] & [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], N'') + CAST([r].[A] | [r].[B] AS NVarChar(10)),
	CAST([r].[A] | [r].[B] AS NVarChar(10)) + Coalesce([r].[S], N''),
	CONCAT_WS(N',', Coalesce([r].[S], N''), [r].[B] | [r].[C], [r].[C]),
	Coalesce([r].[S], N'') + Coalesce([r].[S], N'') + CAST([r].[A] | [r].[B] AS NVarChar(10)),
	Coalesce([r].[S], N'') + CAST([r].[A] ^ [r].[B] AS NVarChar(10)),
	CAST([r].[A] ^ [r].[B] AS NVarChar(10)) + Coalesce([r].[S], N''),
	CONCAT_WS(N',', Coalesce([r].[S], N''), [r].[B] ^ [r].[C], [r].[C]),
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

-- SqlServer.2017
SELECT
	Coalesce([r].[S], N'') + N'-5',
	N'-5' + Coalesce([r].[S], N'')
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

