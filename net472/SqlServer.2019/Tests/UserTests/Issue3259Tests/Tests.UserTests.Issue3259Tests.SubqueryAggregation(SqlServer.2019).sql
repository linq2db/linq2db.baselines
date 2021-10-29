BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [EmployeeTimeOffBalance]
(
	[Id]               Int NOT NULL,
	[TrackingTimeType] Int NOT NULL,
	[EmployeeId]       Int NOT NULL,

	CONSTRAINT [PK_EmployeeTimeOffBalance] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [Employee]
(
	[EmployeeId] Int NOT NULL,

	CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED ([EmployeeId])
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [LeaveRequest]
(
	[Id]         Int NOT NULL,
	[EmployeeId] Int NOT NULL,

	CONSTRAINT [PK_LeaveRequest] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [LeaveRequestDateEntry]
(
	[Id]             Int     NOT NULL,
	[EndHour]        Decimal     NULL,
	[StartHour]      Decimal     NULL,
	[LeaveRequestId] Int     NOT NULL,

	CONSTRAINT [PK_LeaveRequestDateEntry] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

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
	),
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
	),
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
	),
	(
		SELECT
			Sum(IIF([c_4].[StartHour] IS NOT NULL, [c_4].[StartHour], [c_4].[EndHour]))
		FROM
			[LeaveRequest] [e_3]
				INNER JOIN [LeaveRequestDateEntry] [c_4] ON [e_3].[Id] = [c_4].[LeaveRequestId]
		WHERE
			[a_Employee].[EmployeeId] = [e_3].[EmployeeId]
	)
FROM
	[EmployeeTimeOffBalance] [tracking]
		INNER JOIN [Employee] [a_Employee] ON [tracking].[EmployeeId] = [a_Employee].[EmployeeId]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE IF EXISTS [LeaveRequestDateEntry]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE IF EXISTS [LeaveRequest]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE IF EXISTS [Employee]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE IF EXISTS [EmployeeTimeOffBalance]

