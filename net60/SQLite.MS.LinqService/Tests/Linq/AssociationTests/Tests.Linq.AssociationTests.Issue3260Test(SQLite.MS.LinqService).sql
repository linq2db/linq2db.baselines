BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [LeaveRequest]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [LeaveRequest]
(
	[Id]         INTEGER NOT NULL,
	[EmployeeId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [LeaveRequestDateEntry]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [LeaveRequestDateEntry]
(
	[Id]             INTEGER NOT NULL,
	[EndHour]        Decimal     NULL,
	[StartHour]      Decimal     NULL,
	[LeaveRequestId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	(
		SELECT
			Sum([e].[StartHour])
		FROM
			[LeaveRequestDateEntry] [e]
		WHERE
			[x].[Id] = [e].[LeaveRequestId]
	)
FROM
	[LeaveRequest] [x]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [LeaveRequestDateEntry]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [LeaveRequest]

