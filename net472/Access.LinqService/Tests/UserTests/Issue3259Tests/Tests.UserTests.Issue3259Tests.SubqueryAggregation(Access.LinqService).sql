BeforeExecute
-- Access AccessOleDb

CREATE TABLE [EmployeeTimeOffBalance]
(
	[Id]               Int NOT NULL,
	[TrackingTimeType] Int NOT NULL,
	[EmployeeId]       Int NOT NULL,

	CONSTRAINT [PK_EmployeeTimeOffBalance] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Employee]
(
	[EmployeeId] Int NOT NULL,

	CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED ([EmployeeId])
)

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [LeaveRequest]
(
	[Id]         Int NOT NULL,
	[EmployeeId] Int NOT NULL,

	CONSTRAINT [PK_LeaveRequest] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [LeaveRequestDateEntry]
(
	[Id]             Int     NOT NULL,
	[EndHour]        Decimal     NULL,
	[StartHour]      Decimal     NULL,
	[LeaveRequestId] Int     NOT NULL,

	CONSTRAINT [PK_LeaveRequestDateEntry] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb

SELECT
	(
		SELECT
			Sum(Iif([tracking].[TrackingTimeType] = 0, [c_1].[StartHour], [c_1].[EndHour]))
		FROM
			[LeaveRequest] [e]
				INNER JOIN [LeaveRequestDateEntry] [c_1] ON ([e].[Id] = [c_1].[LeaveRequestId])
		WHERE
			[a_Employee].[EmployeeId] = [e].[EmployeeId]
	),
	(
		SELECT
			Sum(Iif([tracking].[TrackingTimeType] = 0, [c_2].[StartHour], [c_2].[EndHour]))
		FROM
			[LeaveRequest] [e_1]
				INNER JOIN [LeaveRequestDateEntry] [c_2] ON ([e_1].[Id] = [c_2].[LeaveRequestId])
		WHERE
			[a_Employee].[EmployeeId] = [e_1].[EmployeeId]
	),
	(
		SELECT
			Sum(Iif([tracking].[TrackingTimeType] = 0, [c_3].[StartHour], [c_3].[EndHour]))
		FROM
			[LeaveRequest] [e_2]
				INNER JOIN [LeaveRequestDateEntry] [c_3] ON ([e_2].[Id] = [c_3].[LeaveRequestId])
		WHERE
			[a_Employee].[EmployeeId] = [e_2].[EmployeeId]
	),
	(
		SELECT
			Sum(Iif([c_4].[StartHour] IS NOT NULL, [c_4].[StartHour], [c_4].[EndHour]))
		FROM
			[LeaveRequest] [e_3]
				INNER JOIN [LeaveRequestDateEntry] [c_4] ON ([e_3].[Id] = [c_4].[LeaveRequestId])
		WHERE
			[a_Employee].[EmployeeId] = [e_3].[EmployeeId]
	)
FROM
	[EmployeeTimeOffBalance] [tracking]
		INNER JOIN [Employee] [a_Employee] ON ([tracking].[EmployeeId] = [a_Employee].[EmployeeId])

BeforeExecute
-- Access AccessOleDb

DROP TABLE [LeaveRequestDateEntry]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [LeaveRequest]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Employee]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [EmployeeTimeOffBalance]

