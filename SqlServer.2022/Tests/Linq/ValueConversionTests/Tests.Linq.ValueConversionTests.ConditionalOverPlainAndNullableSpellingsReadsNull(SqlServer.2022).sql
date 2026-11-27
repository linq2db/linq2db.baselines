-- SqlServer.2022
SELECT
	IIF([r].[Id] = 1, [r].[Plain], [r].[Date])
FROM
	[ShiftedDateRow] [r]
ORDER BY
	[r].[Id]

