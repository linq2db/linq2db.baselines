-- SqlServer.2022.MS SqlServer.2022
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

-- SqlServer.2022.MS SqlServer.2022
SELECT
	-(-5)
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

