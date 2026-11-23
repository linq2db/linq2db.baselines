-- SqlServer.2019
SELECT
	[r].[A] * -[r].[B],
	([r].[A] * -[r].[B]) * [r].[C],
	[r].[A] & ~[r].[B]
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

