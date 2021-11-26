BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [LeaveRequest]
(
	[Id]         INTEGER NOT NULL,
	[EmployeeId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [LeaveRequestDateEntry]
(
	[Id]             INTEGER         NOT NULL,
	[EndHour]        Decimal(29, 10)     NULL,
	[StartHour]      Decimal(29, 10)     NULL,
	[LeaveRequestId] INTEGER         NOT NULL
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

