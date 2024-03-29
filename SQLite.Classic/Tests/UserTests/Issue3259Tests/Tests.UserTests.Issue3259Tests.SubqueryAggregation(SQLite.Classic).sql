﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [EmployeeTimeOffBalance]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [EmployeeTimeOffBalance]
(
	[Id]               INTEGER NOT NULL,
	[TrackingTimeType] INTEGER NOT NULL,
	[EmployeeId]       INTEGER NOT NULL,

	CONSTRAINT [PK_EmployeeTimeOffBalance] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [EmployeeTimeOffBalance]
(
	[Id],
	[TrackingTimeType],
	[EmployeeId]
)
VALUES
(1,0,1),
(2,1,2)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Employee]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Employee]
(
	[EmployeeId] INTEGER NOT NULL,

	CONSTRAINT [PK_Employee] PRIMARY KEY ([EmployeeId])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Employee]
(
	[EmployeeId]
)
VALUES
(1),
(2)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [LeaveRequest]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [LeaveRequest]
(
	[Id]         INTEGER NOT NULL,
	[EmployeeId] INTEGER NOT NULL,

	CONSTRAINT [PK_LeaveRequest] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [LeaveRequest]
(
	[Id],
	[EmployeeId]
)
VALUES
(1,1),
(2,1),
(3,2),
(4,2)

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
	[LeaveRequestId] INTEGER NOT NULL,

	CONSTRAINT [PK_LeaveRequestDateEntry] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [LeaveRequestDateEntry]
(
	[Id],
	[EndHour],
	[StartHour],
	[LeaveRequestId]
)
VALUES
(1,12,1,1),
(2,13,2,1),
(3,14,3,2),
(4,15,4,2)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[WithParentReference],
	[t1].[WithParentReferenceCustom1],
	[t1].[WithParentReferenceCustom2],
	[t1].[WithoutParentReference]
FROM
	(
		SELECT
			(
				SELECT
					Sum(CASE
						WHEN [tracking].[TrackingTimeType] = 0
							THEN [c_1].[StartHour]
						ELSE [c_1].[EndHour]
					END)
				FROM
					[LeaveRequest] [e]
						INNER JOIN [LeaveRequestDateEntry] [c_1] ON [e].[Id] = [c_1].[LeaveRequestId]
				WHERE
					[a_Employee].[EmployeeId] = [e].[EmployeeId]
			) as [WithParentReference],
			(
				SELECT
					Sum(CASE
						WHEN [tracking].[TrackingTimeType] = 0
							THEN [c_2].[StartHour]
						ELSE [c_2].[EndHour]
					END)
				FROM
					[LeaveRequest] [e_1]
						INNER JOIN [LeaveRequestDateEntry] [c_2] ON [e_1].[Id] = [c_2].[LeaveRequestId]
				WHERE
					[a_Employee].[EmployeeId] = [e_1].[EmployeeId]
			) as [WithParentReferenceCustom1],
			(
				SELECT
					Sum(CASE
						WHEN [tracking].[TrackingTimeType] = 0
							THEN [c_3].[StartHour]
						ELSE [c_3].[EndHour]
					END)
				FROM
					[LeaveRequest] [e_2]
						INNER JOIN [LeaveRequestDateEntry] [c_3] ON [e_2].[Id] = [c_3].[LeaveRequestId]
				WHERE
					[a_Employee].[EmployeeId] = [e_2].[EmployeeId]
			) as [WithParentReferenceCustom2],
			(
				SELECT
					Sum(CASE
						WHEN [c_4].[StartHour] IS NOT NULL
							THEN [c_4].[StartHour]
						ELSE [c_4].[EndHour]
					END)
				FROM
					[LeaveRequest] [e_3]
						INNER JOIN [LeaveRequestDateEntry] [c_4] ON [e_3].[Id] = [c_4].[LeaveRequestId]
				WHERE
					[a_Employee].[EmployeeId] = [e_3].[EmployeeId]
			) as [WithoutParentReference]
		FROM
			[EmployeeTimeOffBalance] [tracking]
				INNER JOIN [Employee] [a_Employee] ON [tracking].[EmployeeId] = [a_Employee].[EmployeeId]
	) [t1]
ORDER BY
	Coalesce([t1].[WithParentReference], 0),
	Coalesce([t1].[WithParentReferenceCustom1], 0),
	Coalesce([t1].[WithParentReferenceCustom2], 0),
	Coalesce([t1].[WithoutParentReference], 0) DESC

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [LeaveRequestDateEntry]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [LeaveRequest]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Employee]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [EmployeeTimeOffBalance]

