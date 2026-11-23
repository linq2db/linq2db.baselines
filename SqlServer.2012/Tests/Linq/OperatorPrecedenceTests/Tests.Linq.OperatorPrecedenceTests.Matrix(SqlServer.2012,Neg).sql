-- SqlServer.2012
SELECT
	-([r].[A] + [r].[B]),
	-([r].[A] + [r].[B]),
	-([r].[A] - [r].[B]),
	-([r].[A] - [r].[B]),
	-([r].[A] & [r].[B]),
	-([r].[A] & [r].[B]),
	-([r].[A] | [r].[B]),
	-([r].[A] | [r].[B]),
	-([r].[A] ^ [r].[B]),
	-([r].[A] ^ [r].[B]),
	[r].[B],
	-~[r].[B],
	-(-5),
	-(-5) * [r].[B]
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- SqlServer.2012
SELECT
	-(-5)
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

