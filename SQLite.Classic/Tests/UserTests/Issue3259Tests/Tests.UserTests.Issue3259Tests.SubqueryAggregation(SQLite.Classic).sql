-- SQLite.Classic SQLite

SELECT
	[t5].[WithParentReference],
	[t5].[WithParentReferenceCustom1],
	[t5].[WithParentReferenceCustom2],
	[t5].[WithoutParentReference]
FROM
	(
		SELECT
			(
				SELECT
					SUM(CASE
						WHEN [d].[not_null] IS NOT NULL THEN [d].[WithParentReference]
						ELSE CAST(0 AS Decimal)
					END)
				FROM
					(
						SELECT
							1 as [c1]
					) [t1]
						LEFT JOIN (
							SELECT
								1 as [not_null],
								CASE
									WHEN [tracking].[TrackingTimeType] = 0 THEN [a_LeaveRequestDateEntries].[StartHour]
									ELSE [a_LeaveRequestDateEntries].[EndHour]
								END as [WithParentReference]
							FROM
								[LeaveRequest] [e]
									INNER JOIN [LeaveRequestDateEntry] [a_LeaveRequestDateEntries] ON [e].[Id] = [a_LeaveRequestDateEntries].[LeaveRequestId]
							WHERE
								[a_Employee].[EmployeeId] = [e].[EmployeeId]
						) [d] ON 1=1
			) as [WithParentReference],
			(
				SELECT
					Sum(CASE
						WHEN [d_1].[not_null] IS NOT NULL THEN [d_1].[WithParentReferenceCustom1]
						ELSE CAST(0 AS Decimal)
					END)
				FROM
					(
						SELECT
							1 as [c1]
					) [t2]
						LEFT JOIN (
							SELECT
								1 as [not_null],
								CASE
									WHEN [tracking].[TrackingTimeType] = 0 THEN [a_LeaveRequestDateEntries_1].[StartHour]
									ELSE [a_LeaveRequestDateEntries_1].[EndHour]
								END as [WithParentReferenceCustom1]
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
						WHEN [d_2].[not_null] IS NOT NULL THEN [d_2].[WithParentReferenceCustom2]
						ELSE CAST(0 AS Decimal)
					END)
				FROM
					(
						SELECT
							1 as [c1]
					) [t3]
						LEFT JOIN (
							SELECT
								1 as [not_null],
								CASE
									WHEN [tracking].[TrackingTimeType] = 0 THEN [a_LeaveRequestDateEntries_2].[StartHour]
									ELSE [a_LeaveRequestDateEntries_2].[EndHour]
								END as [WithParentReferenceCustom2]
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
						WHEN [d_3].[not_null] IS NOT NULL THEN [d_3].[WithoutParentReference]
						ELSE CAST(0 AS Decimal)
					END)
				FROM
					(
						SELECT
							1 as [c1]
					) [t4]
						LEFT JOIN (
							SELECT
								1 as [not_null],
								CASE
									WHEN [a_LeaveRequestDateEntries_3].[StartHour] IS NOT NULL
										THEN [a_LeaveRequestDateEntries_3].[StartHour]
									ELSE [a_LeaveRequestDateEntries_3].[EndHour]
								END as [WithoutParentReference]
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
	Coalesce([t5].[WithParentReference], 0),
	Coalesce([t5].[WithParentReferenceCustom1], 0),
	Coalesce([t5].[WithParentReferenceCustom2], 0),
	Coalesce([t5].[WithoutParentReference], 0) DESC

