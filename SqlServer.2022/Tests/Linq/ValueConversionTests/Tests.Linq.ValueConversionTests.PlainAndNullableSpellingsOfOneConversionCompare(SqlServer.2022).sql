-- SqlServer.2022
SELECT
	[r].[Id]
FROM
	[ShiftedDateRow] [r]
WHERE
	[r].[Plain] = [r].[Date]

-- SqlServer.2022
SELECT
	[r].[Id]
FROM
	[ShiftedDateRow] [r]
WHERE
	[r].[Plain] < [r].[Date]

