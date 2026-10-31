-- SqlServer.2022
DECLARE @total Int -- Int32
SET     @total = 700

SELECT
	COUNT(*)
FROM
	[ConvertedAmount] [t]
WHERE
	@total IN (
		SELECT
			SUM([g_1].[Cents])
		FROM
			[ConvertedAmount] [g_1]
		GROUP BY
			[g_1].[Group]
	)

