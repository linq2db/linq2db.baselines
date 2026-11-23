-- SqlServer.Contained SqlServer.2025
SELECT
	CAST([r].[A] + [r].[B] AS NVarChar(11)),
	CAST([r].[A] - [r].[B] AS NVarChar(11)),
	CAST([r].[A] * [r].[B] AS NVarChar(11)),
	CAST([r].[A] / [r].[B] AS NVarChar(11)),
	CAST([r].[A] % [r].[B] AS NVarChar(11)),
	CAST([r].[A] & [r].[B] AS NVarChar(11)),
	CAST([r].[A] | [r].[B] AS NVarChar(11)),
	CAST([r].[A] ^ [r].[B] AS NVarChar(11)),
	CAST(-[r].[A] AS NVarChar(11)),
	CAST(~[r].[A] AS NVarChar(11))
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

