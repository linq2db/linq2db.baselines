BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [EmployeeTimeOffBalance]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[EmployeeTimeOffBalance]', N'U') IS NULL)
	CREATE TABLE [EmployeeTimeOffBalance]
	(
		[Id]               Int NOT NULL,
		[TrackingTimeType] Int NOT NULL,
		[EmployeeId]       Int NOT NULL,

		CONSTRAINT [PK_EmployeeTimeOffBalance] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

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
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Employee]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[Employee]', N'U') IS NULL)
	CREATE TABLE [Employee]
	(
		[EmployeeId] Int NOT NULL,

		CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED ([EmployeeId])
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

INSERT INTO [Employee]
(
	[EmployeeId]
)
VALUES
(1),
(2)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [LeaveRequest]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[LeaveRequest]', N'U') IS NULL)
	CREATE TABLE [LeaveRequest]
	(
		[Id]         Int NOT NULL,
		[EmployeeId] Int NOT NULL,

		CONSTRAINT [PK_LeaveRequest] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

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
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [LeaveRequestDateEntry]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

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
-- SqlServer.Contained.MS SqlServer.2019

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
-- SqlServer.Contained.MS SqlServer.2019

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
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [LeaveRequestDateEntry]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [LeaveRequest]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Employee]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [EmployeeTimeOffBalance]

