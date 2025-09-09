BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[Mixed] [t]
WHERE
	[t].[Int] > 0 AND
	[t].[Str] = 'One' AND
	[t].[Double] = 1 AND
	[t].[Bool] = True AND
	EXISTS(
		SELECT
			*
		FROM
			[Mixed] [u]
		WHERE
			2 > [u].[Int] OR 2 = [u].[Int] AND [u].[Date] > [t].[Date]
	)

