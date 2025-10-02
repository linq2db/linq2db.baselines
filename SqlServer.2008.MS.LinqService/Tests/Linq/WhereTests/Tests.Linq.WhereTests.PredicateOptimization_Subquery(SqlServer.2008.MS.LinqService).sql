BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)

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
			(VALUES
				([p].[Date1]), ([p].[Date2]), ([p].[Date3]), ([p].[Date4])
			) [t1]([item])
	) > CAST('2023-01-01' AS DateTime2)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)

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
				(VALUES
					([p].[Date1]), ([p].[Date2]), ([p].[Date3]), ([p].[Date4])
				) [t1]([item])
		) > [p].[Date1]
			THEN 0
		ELSE 1
	END = 1

