BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [LeaveRequest]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [LeaveRequest]
(
	[Id]         INTEGER NOT NULL,
	[EmployeeId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [LeaveRequestDateEntry]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [LeaveRequestDateEntry]
(
	[Id]             INTEGER NOT NULL,
	[EndHour]        Decimal     NULL,
	[StartHour]      Decimal     NULL,
	[LeaveRequestId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

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

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [LeaveRequestDateEntry]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [LeaveRequest]

