BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [LeaveRequest]
(
	[Id]         INTEGER NOT NULL,
	[EmployeeId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [LeaveRequestDateEntry]
(
	[Id]             INTEGER         NOT NULL,
	[EndHour]        Decimal(29, 10)     NULL,
	[StartHour]      Decimal(29, 10)     NULL,
	[LeaveRequestId] INTEGER         NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [LeaveRequestDateEntry]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [LeaveRequest]

