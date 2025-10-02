BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[p].[PK],
	[p].[Id],
	[p].[Date1],
	[p].[Date2],
	[p].[Date3],
	[p].[Date4]
FROM
	[WithMultipleDates] [p]
WHERE
	(
		SELECT
			MAX([t1].[item])
		FROM
			(
				SELECT [p].[Date1] AS [item]
				UNION ALL
				SELECT [p].[Date2]
				UNION ALL
				SELECT [p].[Date3]
				UNION ALL
				SELECT [p].[Date4]) [t1]
	) > CAST('2023-01-01' AS DateTime)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[p].[PK],
	[p].[Id],
	[p].[Date1],
	[p].[Date2],
	[p].[Date3],
	[p].[Date4]
FROM
	[WithMultipleDates] [p]
WHERE
	CASE
		WHEN (
			SELECT
				MAX([t1].[item])
			FROM
				(
					SELECT [p].[Date1] AS [item]
					UNION ALL
					SELECT [p].[Date2]
					UNION ALL
					SELECT [p].[Date3]
					UNION ALL
					SELECT [p].[Date4]) [t1]
		) > [p].[Date1]
			THEN 0
		ELSE 1
	END = 1

