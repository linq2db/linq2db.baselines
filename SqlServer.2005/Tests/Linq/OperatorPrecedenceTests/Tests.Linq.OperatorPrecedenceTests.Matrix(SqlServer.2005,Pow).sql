-- SqlServer.2005
SELECT
	Power(CAST([r].[B] + [r].[C] AS Float), 2),
	Power(CAST([r].[C] AS Float), CAST([r].[B] + [r].[C] AS Float)),
	Power(CAST([r].[B] AS Float), 2) + [r].[C],
	Power(CAST([r].[B] - [r].[C] AS Float), 2),
	Power(CAST([r].[C] AS Float), CAST([r].[B] - [r].[C] AS Float)),
	Power(CAST([r].[B] AS Float), 2) - [r].[C],
	Power(CAST([r].[B] * [r].[C] AS Float), 2),
	Power(CAST([r].[C] AS Float), CAST([r].[B] * [r].[C] AS Float)),
	Power(CAST([r].[B] AS Float), 2) * [r].[C],
	Power(CAST([r].[B] / [r].[C] AS Float), 2),
	Power(CAST([r].[C] AS Float), CAST([r].[B] / [r].[C] AS Float)),
	Power(CAST([r].[B] AS Float), 2) / [r].[C],
	Power(CAST(-[r].[B] AS Float), 2),
	-Power(CAST([r].[B] AS Float), 2),
	Power(CAST([r].[C] AS Float), Power(CAST([r].[C] AS Float), CAST([r].[C] AS Float))),
	Power(CAST([r].[B] + [r].[C] AS Float), 2)
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

