-- SqlServer.2016
SELECT
	-(-5) * [r].[A],
	-[r].[A] * (-5),
	-([r].[A] - (-5)),
	-(-5) + [r].[A],
	-(-[r].[A] + [r].[B])
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

