-- SqlServer.2012
SELECT
	[r].[Id]
FROM
	[ShiftedDateRow] [r]
WHERE
	[r].[Plain] = [r].[Date]

-- SqlServer.2012
SELECT
	[r].[Id]
FROM
	[ShiftedDateRow] [r]
WHERE
	[r].[Plain] < [r].[Date]

