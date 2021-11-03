BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [EmployeeTimeOffBalance]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [EmployeeTimeOffBalance]
(
	[Id]               Int NOT NULL,
	[TrackingTimeType] Int NOT NULL,
	[EmployeeId]       Int NOT NULL,

	CONSTRAINT [PK_EmployeeTimeOffBalance] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @TrackingTimeType Int -- Int32
SET     @TrackingTimeType = 0
DECLARE @EmployeeId Int -- Int32
SET     @EmployeeId = 1

INSERT INTO [EmployeeTimeOffBalance]
(
	[Id],
	[TrackingTimeType],
	[EmployeeId]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @TrackingTimeType Int -- Int32
SET     @TrackingTimeType = 1
DECLARE @EmployeeId Int -- Int32
SET     @EmployeeId = 2

INSERT INTO [EmployeeTimeOffBalance]
(
	[Id],
	[TrackingTimeType],
	[EmployeeId]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Employee]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Employee]
(
	[EmployeeId] Int NOT NULL,

	CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED ([EmployeeId])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [Employee]
(
	[EmployeeId]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [Employee]
(
	[EmployeeId]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [LeaveRequest]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [LeaveRequest]
(
	[Id]         Int NOT NULL,
	[EmployeeId] Int NOT NULL,

	CONSTRAINT [PK_LeaveRequest] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @EmployeeId Int -- Int32
SET     @EmployeeId = 1

INSERT INTO [LeaveRequest]
(
	[Id],
	[EmployeeId]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @EmployeeId Int -- Int32
SET     @EmployeeId = 1

INSERT INTO [LeaveRequest]
(
	[Id],
	[EmployeeId]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @EmployeeId Int -- Int32
SET     @EmployeeId = 2

INSERT INTO [LeaveRequest]
(
	[Id],
	[EmployeeId]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @EmployeeId Int -- Int32
SET     @EmployeeId = 2

INSERT INTO [LeaveRequest]
(
	[Id],
	[EmployeeId]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [LeaveRequestDateEntry]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [LeaveRequestDateEntry]
(
	[Id]             Int     NOT NULL,
	[EndHour]        Decimal     NULL,
	[StartHour]      Decimal     NULL,
	[LeaveRequestId] Int     NOT NULL,

	CONSTRAINT [PK_LeaveRequestDateEntry] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @EndHour VarChar(2, 0) -- AnsiString
SET     @EndHour = 12
DECLARE @StartHour VarChar(1, 0) -- AnsiString
SET     @StartHour = 1
DECLARE @LeaveRequestId Int -- Int32
SET     @LeaveRequestId = 1

INSERT INTO [LeaveRequestDateEntry]
(
	[Id],
	[EndHour],
	[StartHour],
	[LeaveRequestId]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @EndHour VarChar(2, 0) -- AnsiString
SET     @EndHour = 13
DECLARE @StartHour VarChar(1, 0) -- AnsiString
SET     @StartHour = 2
DECLARE @LeaveRequestId Int -- Int32
SET     @LeaveRequestId = 1

INSERT INTO [LeaveRequestDateEntry]
(
	[Id],
	[EndHour],
	[StartHour],
	[LeaveRequestId]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @EndHour VarChar(2, 0) -- AnsiString
SET     @EndHour = 14
DECLARE @StartHour VarChar(1, 0) -- AnsiString
SET     @StartHour = 3
DECLARE @LeaveRequestId Int -- Int32
SET     @LeaveRequestId = 2

INSERT INTO [LeaveRequestDateEntry]
(
	[Id],
	[EndHour],
	[StartHour],
	[LeaveRequestId]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @EndHour VarChar(2, 0) -- AnsiString
SET     @EndHour = 15
DECLARE @StartHour VarChar(1, 0) -- AnsiString
SET     @StartHour = 4
DECLARE @LeaveRequestId Int -- Int32
SET     @LeaveRequestId = 2

INSERT INTO [LeaveRequestDateEntry]
(
	[Id],
	[EndHour],
	[StartHour],
	[LeaveRequestId]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

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
					Sum(Iif([tracking].[TrackingTimeType] = 0, [c_1].[StartHour], [c_1].[EndHour]))
				FROM
					[LeaveRequest] [e]
						INNER JOIN [LeaveRequestDateEntry] [c_1] ON ([e].[Id] = [c_1].[LeaveRequestId])
				WHERE
					[a_Employee].[EmployeeId] = [e].[EmployeeId]
			) as [WithParentReference],
			(
				SELECT
					Sum(Iif([tracking].[TrackingTimeType] = 0, [c_2].[StartHour], [c_2].[EndHour]))
				FROM
					[LeaveRequest] [e_1]
						INNER JOIN [LeaveRequestDateEntry] [c_2] ON ([e_1].[Id] = [c_2].[LeaveRequestId])
				WHERE
					[a_Employee].[EmployeeId] = [e_1].[EmployeeId]
			) as [WithParentReferenceCustom1],
			(
				SELECT
					Sum(Iif([tracking].[TrackingTimeType] = 0, [c_3].[StartHour], [c_3].[EndHour]))
				FROM
					[LeaveRequest] [e_2]
						INNER JOIN [LeaveRequestDateEntry] [c_3] ON ([e_2].[Id] = [c_3].[LeaveRequestId])
				WHERE
					[a_Employee].[EmployeeId] = [e_2].[EmployeeId]
			) as [WithParentReferenceCustom2],
			(
				SELECT
					Sum(Iif([c_4].[StartHour] IS NOT NULL, [c_4].[StartHour], [c_4].[EndHour]))
				FROM
					[LeaveRequest] [e_3]
						INNER JOIN [LeaveRequestDateEntry] [c_4] ON ([e_3].[Id] = [c_4].[LeaveRequestId])
				WHERE
					[a_Employee].[EmployeeId] = [e_3].[EmployeeId]
			) as [WithoutParentReference]
		FROM
			[EmployeeTimeOffBalance] [tracking]
				INNER JOIN [Employee] [a_Employee] ON ([tracking].[EmployeeId] = [a_Employee].[EmployeeId])
	) [t1]
ORDER BY
	Iif([t1].[WithParentReference] IS NULL, 0, [t1].[WithParentReference]),
	Iif([t1].[WithParentReferenceCustom1] IS NULL, 0, [t1].[WithParentReferenceCustom1]),
	Iif([t1].[WithParentReferenceCustom2] IS NULL, 0, [t1].[WithParentReferenceCustom2]),
	Iif([t1].[WithoutParentReference] IS NULL, 0, [t1].[WithoutParentReference]) DESC

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [LeaveRequestDateEntry]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [LeaveRequest]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Employee]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [EmployeeTimeOffBalance]

