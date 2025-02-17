﻿BeforeExecute
-- SqlServer.2014

SELECT
	[t9].[SUM_1],
	[t9].[SumCustom],
	[t9].[SumCustom_1],
	[t9].[SUM_2]
FROM
	(
		SELECT
			(
				SELECT
					SUM([t2].[WithParentReference])
				FROM
					(
						SELECT
							IIF([d].[not_null] IS NOT NULL, IIF([tracking].[TrackingTimeType] = 0, [d].[StartHour], [d].[EndHour]), CAST(0 AS Decimal(38, 17))) as [WithParentReference]
						FROM
							(
								SELECT
									0 as [WithParentReference]
							) [t1]
								LEFT JOIN (
									SELECT
										1 as [not_null],
										[a_LeaveRequestDateEntries].[StartHour],
										[a_LeaveRequestDateEntries].[EndHour]
									FROM
										[LeaveRequest] [e]
											INNER JOIN [LeaveRequestDateEntry] [a_LeaveRequestDateEntries] ON [e].[Id] = [a_LeaveRequestDateEntries].[LeaveRequestId]
									WHERE
										[a_Employee].[EmployeeId] = [e].[EmployeeId]
								) [d] ON 1=1
					) [t2]
			) as [SUM_1],
			(
				SELECT
					Sum([t4].[WithParentReferenceCustom1])
				FROM
					(
						SELECT
							IIF([d_1].[not_null] IS NOT NULL, IIF([tracking].[TrackingTimeType] = 0, [d_1].[StartHour], [d_1].[EndHour]), CAST(0 AS Decimal(38, 17))) as [WithParentReferenceCustom1]
						FROM
							(
								SELECT
									0 as [WithParentReferenceCustom1]
							) [t3]
								LEFT JOIN (
									SELECT
										1 as [not_null],
										[a_LeaveRequestDateEntries_1].[StartHour],
										[a_LeaveRequestDateEntries_1].[EndHour]
									FROM
										[LeaveRequest] [e_1]
											INNER JOIN [LeaveRequestDateEntry] [a_LeaveRequestDateEntries_1] ON [e_1].[Id] = [a_LeaveRequestDateEntries_1].[LeaveRequestId]
									WHERE
										[a_Employee].[EmployeeId] = [e_1].[EmployeeId]
								) [d_1] ON 1=1
					) [t4]
			) as [SumCustom],
			(
				SELECT
					Sum([t6].[WithParentReferenceCustom2])
				FROM
					(
						SELECT
							IIF([d_2].[not_null] IS NOT NULL, IIF([tracking].[TrackingTimeType] = 0, [d_2].[StartHour], [d_2].[EndHour]), CAST(0 AS Decimal(38, 17))) as [WithParentReferenceCustom2]
						FROM
							(
								SELECT
									0 as [WithParentReferenceCustom2]
							) [t5]
								LEFT JOIN (
									SELECT
										1 as [not_null],
										[a_LeaveRequestDateEntries_2].[StartHour],
										[a_LeaveRequestDateEntries_2].[EndHour]
									FROM
										[LeaveRequest] [e_2]
											INNER JOIN [LeaveRequestDateEntry] [a_LeaveRequestDateEntries_2] ON [e_2].[Id] = [a_LeaveRequestDateEntries_2].[LeaveRequestId]
									WHERE
										[a_Employee].[EmployeeId] = [e_2].[EmployeeId]
								) [d_2] ON 1=1
					) [t6]
			) as [SumCustom_1],
			(
				SELECT
					SUM([t8].[WithoutParentReference])
				FROM
					(
						SELECT
							IIF([d_3].[not_null] IS NOT NULL, IIF([d_3].[StartHour] IS NOT NULL, [d_3].[StartHour], [d_3].[EndHour]), CAST(0 AS Decimal(38, 17))) as [WithoutParentReference]
						FROM
							(
								SELECT
									0 as [WithoutParentReference]
							) [t7]
								LEFT JOIN (
									SELECT
										1 as [not_null],
										[a_LeaveRequestDateEntries_3].[StartHour],
										[a_LeaveRequestDateEntries_3].[EndHour]
									FROM
										[LeaveRequest] [e_3]
											INNER JOIN [LeaveRequestDateEntry] [a_LeaveRequestDateEntries_3] ON [e_3].[Id] = [a_LeaveRequestDateEntries_3].[LeaveRequestId]
									WHERE
										[a_Employee].[EmployeeId] = [e_3].[EmployeeId]
								) [d_3] ON 1=1
					) [t8]
			) as [SUM_2]
		FROM
			[EmployeeTimeOffBalance] [tracking]
				INNER JOIN [Employee] [a_Employee] ON [tracking].[EmployeeId] = [a_Employee].[EmployeeId]
	) [t9]
ORDER BY
	Coalesce([t9].[SUM_1], 0),
	Coalesce([t9].[SumCustom], 0),
	Coalesce([t9].[SumCustom_1], 0),
	Coalesce([t9].[SUM_2], 0) DESC

