-- SQLite.Classic SQLite

SELECT
	(
		SELECT
			SUM(CASE
				WHEN [d].[not_null] IS NOT NULL THEN [d].[Result_1]
				ELSE CAST(0 AS Decimal)
			END)
		FROM
			(
				SELECT
					1 as [c1]
			) [t1]
				LEFT JOIN (
					SELECT
						1 as [not_null],
						[e].[StartHour] as [Result_1]
					FROM
						[LeaveRequestDateEntry] [e]
					WHERE
						[x].[Id] = [e].[LeaveRequestId]
				) [d] ON 1=1
	)
FROM
	[LeaveRequest] [x]

