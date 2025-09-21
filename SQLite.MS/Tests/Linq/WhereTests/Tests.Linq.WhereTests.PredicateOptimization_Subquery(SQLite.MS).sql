BeforeExecute
-- SQLite.MS SQLite

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
			strftime('%Y-%m-%d %H:%M:%f', MAX([t1].[item]))
		FROM
			(
				SELECT NULL [item] WHERE 1 = 0
				UNION ALL
				VALUES
					([p].[Date1]), ([p].[Date2]), ([p].[Date3]), ([p].[Date4])
				) [t1]
	) > strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', '2023-01-01 00:00:00.000'))

BeforeExecute
-- SQLite.MS SQLite

SELECT
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
				strftime('%Y-%m-%d %H:%M:%f', MAX([t1].[item]))
			FROM
				(
					SELECT NULL [item] WHERE 1 = 0
					UNION ALL
					VALUES
						([p].[Date1]), ([p].[Date2]), ([p].[Date3]), ([p].[Date4])
					) [t1]
		) > strftime('%Y-%m-%d %H:%M:%f', [p].[Date1])
			THEN 0
		ELSE 1
	END

