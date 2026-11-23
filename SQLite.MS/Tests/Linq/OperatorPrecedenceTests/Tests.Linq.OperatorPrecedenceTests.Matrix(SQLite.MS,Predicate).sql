-- SQLite.MS SQLite
SELECT
	CASE
		WHEN [r].[A] + [r].[B] = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] < [r].[A] + [r].[B] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] + [r].[B] BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] BETWEEN [r].[B] + [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] + [r].[B] IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([r].[S], '') || CAST([r].[A] + [r].[B] AS NVarChar(10)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] + [r].[B] <= [r].[C] AND [r].[B] < [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] + [r].[B] IS NOT [r].[N] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NOT [r].[A] + [r].[B] THEN 1
		ELSE 0
	END,
	CASE
		WHEN -[r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] - [r].[B] BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] BETWEEN [r].[A] - [r].[B] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~[r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] + ~[r].[B] BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] BETWEEN [r].[A] + ~[r].[B] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] - [r].[B] = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] < [r].[A] - [r].[B] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] - [r].[B] BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] BETWEEN [r].[B] - [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] - [r].[B] IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([r].[S], '') || CAST([r].[A] - [r].[B] AS NVarChar(10)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] - [r].[B] <= [r].[C] AND [r].[B] < [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] - [r].[B] IS NOT [r].[N] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NOT [r].[A] - [r].[B] THEN 1
		ELSE 0
	END,
	CASE
		WHEN -[r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] + [r].[B] BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] BETWEEN [r].[A] + [r].[B] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~[r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] - ~[r].[B] BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] BETWEEN [r].[A] - ~[r].[B] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] * [r].[B] = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] < [r].[A] * [r].[B] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] * [r].[B] BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] BETWEEN [r].[B] * [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] * [r].[B] IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([r].[S], '') || CAST([r].[A] * [r].[B] AS NVarChar(10)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] * [r].[B] <= [r].[C] AND [r].[B] < [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] * [r].[B] IS NOT [r].[N] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NOT [r].[A] * [r].[B] THEN 1
		ELSE 0
	END,
	CASE
		WHEN -[r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] * -[r].[B] BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] BETWEEN [r].[A] * -[r].[B] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~[r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] * ~[r].[B] BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] BETWEEN [r].[A] * ~[r].[B] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] / [r].[B] = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] < [r].[A] / [r].[B] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] / [r].[B] BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] BETWEEN [r].[B] / [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] / [r].[B] IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([r].[S], '') || CAST([r].[A] / [r].[B] AS NVarChar(10)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] / [r].[B] <= [r].[C] AND [r].[B] < [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] / [r].[B] IS NOT [r].[N] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NOT [r].[A] / [r].[B] THEN 1
		ELSE 0
	END,
	CASE
		WHEN -[r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] / -[r].[B] BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] BETWEEN [r].[A] / -[r].[B] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~[r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] % [r].[B] = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] < [r].[A] % [r].[B] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] % [r].[B] BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] BETWEEN [r].[B] % [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] % [r].[B] IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([r].[S], '') || CAST([r].[A] % [r].[B] AS NVarChar(10)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] % [r].[B] <= [r].[C] AND [r].[B] < [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] % [r].[B] IS NOT [r].[N] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NOT [r].[A] % [r].[B] THEN 1
		ELSE 0
	END,
	CASE
		WHEN -[r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] % -[r].[B] BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] BETWEEN [r].[A] % -[r].[B] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~[r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] % ~[r].[B] BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] BETWEEN [r].[A] % ~[r].[B] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] & [r].[B] = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] < [r].[A] & [r].[B] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] & [r].[B] BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] BETWEEN [r].[B] & [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] & [r].[B] IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([r].[S], '') || CAST([r].[A] & [r].[B] AS NVarChar(10)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] & [r].[B] <= [r].[C] AND [r].[B] < [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] & [r].[B] IS NOT [r].[N] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NOT [r].[A] & [r].[B] THEN 1
		ELSE 0
	END,
	CASE
		WHEN -[r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] & -[r].[B] BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] BETWEEN [r].[A] & -[r].[B] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~[r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] & ~[r].[B] BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] BETWEEN [r].[A] & ~[r].[B] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] | [r].[B] = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] < [r].[A] | [r].[B] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] | [r].[B] BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] BETWEEN [r].[B] | [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] | [r].[B] IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] | [r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([r].[S], '') || CAST([r].[A] | [r].[B] AS NVarChar(10)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] | [r].[B] <= [r].[C] AND [r].[B] < [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] | [r].[B] IS NOT [r].[N] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NOT [r].[A] | [r].[B] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] | -[r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] | -[r].[B] BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] BETWEEN [r].[A] | -[r].[B] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] | ~[r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] | ~[r].[B] BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] BETWEEN [r].[A] | ~[r].[B] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] + [r].[B] - ([r].[A] & [r].[B]) * 2 = [r].[C]
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] < [r].[A] + [r].[B] - ([r].[A] & [r].[B]) * 2
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] + [r].[B] - ([r].[A] & [r].[B]) * 2 BETWEEN [r].[C] AND [r].[A]
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] BETWEEN [r].[B] + [r].[C] - ([r].[B] & [r].[C]) * 2 AND [r].[A]
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] + [r].[B] - ([r].[A] & [r].[B]) * 2 IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([r].[S], '') || CAST([r].[A] + [r].[B] - ([r].[A] & [r].[B]) * 2 AS NVarChar(10)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] + [r].[B] - ([r].[A] & [r].[B]) * 2 <= [r].[C] AND [r].[B] < [r].[A]
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] + [r].[B] - ([r].[A] & [r].[B]) * 2 IS NOT [r].[N]
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NOT [r].[A] + [r].[B] - ([r].[A] & [r].[B]) * 2
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NULL OR -[r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] - [r].[B] - ([r].[A] & -[r].[B]) * 2 BETWEEN [r].[C] AND [r].[A]
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] BETWEEN [r].[A] - [r].[B] - ([r].[A] & -[r].[B]) * 2 AND [r].[A]
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~[r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] + ~[r].[B] - ([r].[A] & ~[r].[B]) * 2 BETWEEN [r].[C] AND [r].[A]
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] BETWEEN [r].[A] + ~[r].[B] - ([r].[A] & ~[r].[B]) * 2 AND [r].[A]
			THEN 1
		ELSE 0
	END,
	[r].[A] * -[r].[B] + [r].[C],
	[r].[A] * ~[r].[B] + [r].[C],
	[r].[A] * -[r].[B] - [r].[C],
	[r].[A] * ~[r].[B] - [r].[C],
	([r].[A] * -[r].[B]) * [r].[C],
	([r].[A] * ~[r].[B]) * [r].[C],
	[r].[A] * -[r].[B] + [r].[C],
	[r].[A] * ~[r].[B] + [r].[C],
	CASE
		WHEN -[r].[A] = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] = -[r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~[r].[A] = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] = ~[r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN -5 = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] = -5 THEN 1
		ELSE 0
	END
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
SELECT
	CASE
		WHEN -5 = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] = -5 THEN 1
		ELSE 0
	END
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

