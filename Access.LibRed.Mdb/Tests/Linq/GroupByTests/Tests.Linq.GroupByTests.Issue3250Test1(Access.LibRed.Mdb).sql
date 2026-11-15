-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	CStr([g_2].[Message]) + ' items have not been processed, e.g. #' + CASE
		WHEN [g_2].[Message_1] IS NULL THEN ''
		WHEN [g_2].[Message_1] IS NOT NULL THEN CStr([g_2].[Message_1])
		ELSE NULL
	END + '.'
FROM
	(
		SELECT
			COUNT(*) as [Message],
			MIN([g_1].[PersonID]) as [Message_1]
		FROM
			[Person] [g_1]
		WHERE
			[g_1].[LastName] <> 'ERROR'
	) [g_2]
WHERE
	[g_2].[Message] > 0

