-- SqlServer.2008.MS SqlServer.2008
SELECT
	[r].[A] * -[r].[B],
	([r].[A] * -[r].[B]) * [r].[C],
	[r].[A] & ~[r].[B]
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

