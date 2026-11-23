-- SqlServer.2012.MS SqlServer.2012
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

