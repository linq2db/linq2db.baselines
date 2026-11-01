-- Access.Ace.Odbc AccessODBC
DECLARE @total Int -- Int32
SET     @total = 700

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[g_1].[Group] as [Group_1]
		FROM
			[ConvertedAmount] [g_1]
		GROUP BY
			[g_1].[Group]
		HAVING
			SUM([g_1].[Cents]) = ?
	) [t1]

