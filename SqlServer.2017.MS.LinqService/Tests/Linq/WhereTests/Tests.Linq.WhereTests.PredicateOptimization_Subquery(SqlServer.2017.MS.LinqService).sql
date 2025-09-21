BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

SELECT
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
	) > DATETIMEFROMPARTS(2023, 1, 1, 0, 0, 0, 0)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

SELECT
	[p].[Id],
	[p].[Date1],
	[p].[Date2],
	[p].[Date3],
	[p].[Date4]
FROM
	[WithMultipleDates] [p]
WHERE
	IIF((
		SELECT
			MAX([t1].[item])
		FROM
			(VALUES
				([p].[Date1]), ([p].[Date2]), ([p].[Date3]), ([p].[Date4])
			) [t1]([item])
	) > [p].[Date1], 0, 1) = 1

