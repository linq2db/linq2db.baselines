-- SqlCe
SELECT
	[r].[A] % ([r].[B] + [r].[C])
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

