-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	(
		SELECT
			SUM(CASE
				WHEN [d].[not_null] IS NOT NULL THEN [d].[StartHour]
				ELSE CAST(0 AS Decimal)
			END)
		FROM
			(
				SELECT
					0 as [Result_1]
			) [t1]
				LEFT JOIN (
					SELECT
						1 as [not_null],
						[e].[StartHour]
					FROM
						[LeaveRequestDateEntry] [e]
					WHERE
						[x].[Id] = [e].[LeaveRequestId]
				) [d] ON 1=1
	)
FROM
	[LeaveRequest] [x]

