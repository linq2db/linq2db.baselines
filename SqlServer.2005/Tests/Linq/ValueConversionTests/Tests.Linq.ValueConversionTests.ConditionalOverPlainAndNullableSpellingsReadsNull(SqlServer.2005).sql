-- SqlServer.2005
SELECT
	CASE
		WHEN [r].[Id] = 1 THEN [r].[Plain]
		ELSE [r].[Date]
	END
FROM
	[ShiftedDateRow] [r]
ORDER BY
	[r].[Id]

