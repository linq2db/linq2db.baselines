BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [EmployeeTimeOffBalance]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[EmployeeTimeOffBalance]', N'U') IS NULL)
	CREATE TABLE [EmployeeTimeOffBalance]
	(
		[Id]               Int NOT NULL,
		[TrackingTimeType] Int NOT NULL,
		[EmployeeId]       Int NOT NULL,

		CONSTRAINT [PK_EmployeeTimeOffBalance] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022
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
	@Id,
	@TrackingTimeType,
	@EmployeeId
)

BeforeExecute
-- SqlServer.2022
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
	@Id,
	@TrackingTimeType,
	@EmployeeId
)

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Employee]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[Employee]', N'U') IS NULL)
	CREATE TABLE [Employee]
	(
		[EmployeeId] Int NOT NULL,

		CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED ([EmployeeId])
	)

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [Employee]
(
	[EmployeeId]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [Employee]
(
	[EmployeeId]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [LeaveRequest]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[LeaveRequest]', N'U') IS NULL)
	CREATE TABLE [LeaveRequest]
	(
		[Id]         Int NOT NULL,
		[EmployeeId] Int NOT NULL,

		CONSTRAINT [PK_LeaveRequest] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022
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
	@Id,
	@EmployeeId
)

BeforeExecute
-- SqlServer.2022
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
	@Id,
	@EmployeeId
)

BeforeExecute
-- SqlServer.2022
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
	@Id,
	@EmployeeId
)

BeforeExecute
-- SqlServer.2022
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
	@Id,
	@EmployeeId
)

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [LeaveRequestDateEntry]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[LeaveRequestDateEntry]', N'U') IS NULL)
	CREATE TABLE [LeaveRequestDateEntry]
	(
		[Id]             Int     NOT NULL,
		[EndHour]        Decimal     NULL,
		[StartHour]      Decimal     NULL,
		[LeaveRequestId] Int     NOT NULL,

		CONSTRAINT [PK_LeaveRequestDateEntry] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @EndHour Decimal(2, 0)
SET     @EndHour = 12
DECLARE @StartHour Decimal(1, 0)
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
	@Id,
	@EndHour,
	@StartHour,
	@LeaveRequestId
)

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @EndHour Decimal(2, 0)
SET     @EndHour = 13
DECLARE @StartHour Decimal(1, 0)
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
	@Id,
	@EndHour,
	@StartHour,
	@LeaveRequestId
)

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @EndHour Decimal(2, 0)
SET     @EndHour = 14
DECLARE @StartHour Decimal(1, 0)
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
	@Id,
	@EndHour,
	@StartHour,
	@LeaveRequestId
)

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @EndHour Decimal(2, 0)
SET     @EndHour = 15
DECLARE @StartHour Decimal(1, 0)
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
	@Id,
	@EndHour,
	@StartHour,
	@LeaveRequestId
)

BeforeExecute
-- SqlServer.2022

SELECT
	[t4].[WithParentReference],
	[t4].[WithParentReferenceCustom1],
	[t4].[WithParentReferenceCustom2],
	[t4].[WithoutParentReference]
FROM
	(
		SELECT
			(
				SELECT
					Sum([t1].[c1])
				FROM
					(
						SELECT
							IIF([tracking].[TrackingTimeType] = 0, [c_1].[StartHour], [c_1].[EndHour]) as [c1]
						FROM
							[LeaveRequest] [e]
								INNER JOIN [LeaveRequestDateEntry] [c_1] ON [e].[Id] = [c_1].[LeaveRequestId]
						WHERE
							[a_Employee].[EmployeeId] = [e].[EmployeeId]
					) [t1]
			) as [WithParentReference],
			(
				SELECT
					Sum([t2].[c1])
				FROM
					(
						SELECT
							IIF([tracking].[TrackingTimeType] = 0, [c_2].[StartHour], [c_2].[EndHour]) as [c1]
						FROM
							[LeaveRequest] [e_1]
								INNER JOIN [LeaveRequestDateEntry] [c_2] ON [e_1].[Id] = [c_2].[LeaveRequestId]
						WHERE
							[a_Employee].[EmployeeId] = [e_1].[EmployeeId]
					) [t2]
			) as [WithParentReferenceCustom1],
			(
				SELECT
					Sum([t3].[c1])
				FROM
					(
						SELECT
							IIF([tracking].[TrackingTimeType] = 0, [c_3].[StartHour], [c_3].[EndHour]) as [c1]
						FROM
							[LeaveRequest] [e_2]
								INNER JOIN [LeaveRequestDateEntry] [c_3] ON [e_2].[Id] = [c_3].[LeaveRequestId]
						WHERE
							[a_Employee].[EmployeeId] = [e_2].[EmployeeId]
					) [t3]
			) as [WithParentReferenceCustom2],
			(
				SELECT
					Sum(IIF([c_4].[StartHour] IS NOT NULL, [c_4].[StartHour], [c_4].[EndHour]))
				FROM
					[LeaveRequest] [e_3]
						INNER JOIN [LeaveRequestDateEntry] [c_4] ON [e_3].[Id] = [c_4].[LeaveRequestId]
				WHERE
					[a_Employee].[EmployeeId] = [e_3].[EmployeeId]
			) as [WithoutParentReference]
		FROM
			[EmployeeTimeOffBalance] [tracking]
				INNER JOIN [Employee] [a_Employee] ON [tracking].[EmployeeId] = [a_Employee].[EmployeeId]
	) [t4]
ORDER BY
	Coalesce([t4].[WithParentReference], 0),
	Coalesce([t4].[WithParentReferenceCustom1], 0),
	Coalesce([t4].[WithParentReferenceCustom2], 0),
	Coalesce([t4].[WithoutParentReference], 0) DESC

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [LeaveRequestDateEntry]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [LeaveRequest]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Employee]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [EmployeeTimeOffBalance]

