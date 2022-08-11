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
			Sum([e].[StartHour])
		FROM
			[LeaveRequestDateEntry] [e]
		WHERE
			[x].[Id] = [e].[LeaveRequestId]
	)
FROM
	[LeaveRequest] [x]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [LeaveRequestDateEntry]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [LeaveRequest]

