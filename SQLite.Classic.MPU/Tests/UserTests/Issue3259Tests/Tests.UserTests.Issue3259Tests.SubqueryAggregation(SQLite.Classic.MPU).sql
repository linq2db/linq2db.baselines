BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [EmployeeTimeOffBalance]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [EmployeeTimeOffBalance]
(
	[Id]               INTEGER NOT NULL,
	[TrackingTimeType] INTEGER NOT NULL,
	[EmployeeId]       INTEGER NOT NULL,

	CONSTRAINT [PK_EmployeeTimeOffBalance] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Employee]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Employee]
(
	[EmployeeId] INTEGER NOT NULL,

	CONSTRAINT [PK_Employee] PRIMARY KEY ([EmployeeId])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [Employee]
(
	[EmployeeId]
)
VALUES
(1),
(2)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [LeaveRequest]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [LeaveRequest]
(
	[Id]         INTEGER NOT NULL,
	[EmployeeId] INTEGER NOT NULL,

	CONSTRAINT [PK_LeaveRequest] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [LeaveRequestDateEntry]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [LeaveRequestDateEntry]
(
	[Id]             INTEGER NOT NULL,
	[EndHour]        Decimal     NULL,
	[StartHour]      Decimal     NULL,
	[LeaveRequestId] INTEGER NOT NULL,

	CONSTRAINT [PK_LeaveRequestDateEntry] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t5].[SUM_1],
	[t5].[WithParentReferenceCustom1],
	[t5].[WithParentReferenceCustom2],
	[t5].[WithoutParentReference]
FROM
	(
		SELECT
			(
				SELECT
					SUM(CASE
						WHEN [d].[not_null] IS NOT NULL THEN [d].[c1]
						ELSE 0
					END)
				FROM
					(
						SELECT
							0 as [c1]
					) [t1]
						LEFT JOIN (
							SELECT
								1 as [not_null],
								CASE
									WHEN [tracking].[TrackingTimeType] = 0 THEN [a_LeaveRequestDateEntries].[StartHour]
									ELSE [a_LeaveRequestDateEntries].[EndHour]
								END as [c1]
							FROM
								[LeaveRequest] [e]
									INNER JOIN [LeaveRequestDateEntry] [a_LeaveRequestDateEntries] ON [e].[Id] = [a_LeaveRequestDateEntries].[LeaveRequestId]
							WHERE
								[a_Employee].[EmployeeId] = [e].[EmployeeId]
						) [d] ON 1=1
			) as [SUM_1],
			(
				SELECT
					Sum(CASE
						WHEN [d_1].[not_null] IS NOT NULL THEN [d_1].[c1]
						ELSE 0
					END)
				FROM
					(
						SELECT
							0 as [c1]
					) [t2]
						LEFT JOIN (
							SELECT
								1 as [not_null],
								CASE
									WHEN [tracking].[TrackingTimeType] = 0 THEN [a_LeaveRequestDateEntries_1].[StartHour]
									ELSE [a_LeaveRequestDateEntries_1].[EndHour]
								END as [c1]
							FROM
								[LeaveRequest] [e_1]
									INNER JOIN [LeaveRequestDateEntry] [a_LeaveRequestDateEntries_1] ON [e_1].[Id] = [a_LeaveRequestDateEntries_1].[LeaveRequestId]
							WHERE
								[a_Employee].[EmployeeId] = [e_1].[EmployeeId]
						) [d_1] ON 1=1
			) as [WithParentReferenceCustom1],
			(
				SELECT
					Sum(CASE
						WHEN [d_2].[not_null] IS NOT NULL THEN [d_2].[c1]
						ELSE 0
					END)
				FROM
					(
						SELECT
							0 as [c1]
					) [t3]
						LEFT JOIN (
							SELECT
								1 as [not_null],
								CASE
									WHEN [tracking].[TrackingTimeType] = 0 THEN [a_LeaveRequestDateEntries_2].[StartHour]
									ELSE [a_LeaveRequestDateEntries_2].[EndHour]
								END as [c1]
							FROM
								[LeaveRequest] [e_2]
									INNER JOIN [LeaveRequestDateEntry] [a_LeaveRequestDateEntries_2] ON [e_2].[Id] = [a_LeaveRequestDateEntries_2].[LeaveRequestId]
							WHERE
								[a_Employee].[EmployeeId] = [e_2].[EmployeeId]
						) [d_2] ON 1=1
			) as [WithParentReferenceCustom2],
			(
				SELECT
					SUM(CASE
						WHEN [d_3].[not_null] IS NOT NULL THEN [d_3].[c1]
						ELSE 0
					END)
				FROM
					(
						SELECT
							0 as [c1]
					) [t4]
						LEFT JOIN (
							SELECT
								1 as [not_null],
								CASE
									WHEN [a_LeaveRequestDateEntries_3].[StartHour] IS NOT NULL
										THEN [a_LeaveRequestDateEntries_3].[StartHour]
									ELSE [a_LeaveRequestDateEntries_3].[EndHour]
								END as [c1]
							FROM
								[LeaveRequest] [e_3]
									INNER JOIN [LeaveRequestDateEntry] [a_LeaveRequestDateEntries_3] ON [e_3].[Id] = [a_LeaveRequestDateEntries_3].[LeaveRequestId]
							WHERE
								[a_Employee].[EmployeeId] = [e_3].[EmployeeId]
						) [d_3] ON 1=1
			) as [WithoutParentReference]
		FROM
			[EmployeeTimeOffBalance] [tracking]
				INNER JOIN [Employee] [a_Employee] ON [tracking].[EmployeeId] = [a_Employee].[EmployeeId]
	) [t5]
ORDER BY
	Coalesce([t5].[SUM_1], 0),
	Coalesce([t5].[WithParentReferenceCustom1], 0),
	Coalesce([t5].[WithParentReferenceCustom2], 0),
	Coalesce([t5].[WithoutParentReference], 0) DESC

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [LeaveRequestDateEntry]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [LeaveRequest]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Employee]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [EmployeeTimeOffBalance]

