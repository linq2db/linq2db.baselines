BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t5."SUM_1",
	t5."SumCustom",
	t5."SumCustom_1",
	t5."SUM_2"
FROM
	(
		SELECT
			(
				SELECT
					SUM(CASE
						WHEN d.not_null IS NOT NULL THEN CASE
							WHEN tracking."TrackingTimeType" = 0 THEN d."StartHour"
							ELSE d."EndHour"
						END
						ELSE 0::decimal
					END)
				FROM
					(
						SELECT
							0 as "WithParentReference"
					) t1
						LEFT JOIN (
							SELECT
								1 as not_null,
								"a_LeaveRequestDateEntries"."StartHour",
								"a_LeaveRequestDateEntries"."EndHour"
							FROM
								"LeaveRequest" e
									INNER JOIN "LeaveRequestDateEntry" "a_LeaveRequestDateEntries" ON e."Id" = "a_LeaveRequestDateEntries"."LeaveRequestId"
							WHERE
								"a_Employee"."EmployeeId" = e."EmployeeId"
						) d ON 1=1
			) as "SUM_1",
			(
				SELECT
					Sum(CASE
						WHEN d_1.not_null IS NOT NULL THEN CASE
							WHEN tracking."TrackingTimeType" = 0 THEN d_1."StartHour"
							ELSE d_1."EndHour"
						END
						ELSE 0::decimal
					END)
				FROM
					(
						SELECT
							0 as "WithParentReferenceCustom1"
					) t2
						LEFT JOIN (
							SELECT
								1 as not_null,
								"a_LeaveRequestDateEntries_1"."StartHour",
								"a_LeaveRequestDateEntries_1"."EndHour"
							FROM
								"LeaveRequest" e_1
									INNER JOIN "LeaveRequestDateEntry" "a_LeaveRequestDateEntries_1" ON e_1."Id" = "a_LeaveRequestDateEntries_1"."LeaveRequestId"
							WHERE
								"a_Employee"."EmployeeId" = e_1."EmployeeId"
						) d_1 ON 1=1
			) as "SumCustom",
			(
				SELECT
					Sum(CASE
						WHEN d_2.not_null IS NOT NULL THEN CASE
							WHEN tracking."TrackingTimeType" = 0 THEN d_2."StartHour"
							ELSE d_2."EndHour"
						END
						ELSE 0::decimal
					END)
				FROM
					(
						SELECT
							0 as "WithParentReferenceCustom2"
					) t3
						LEFT JOIN (
							SELECT
								1 as not_null,
								"a_LeaveRequestDateEntries_2"."StartHour",
								"a_LeaveRequestDateEntries_2"."EndHour"
							FROM
								"LeaveRequest" e_2
									INNER JOIN "LeaveRequestDateEntry" "a_LeaveRequestDateEntries_2" ON e_2."Id" = "a_LeaveRequestDateEntries_2"."LeaveRequestId"
							WHERE
								"a_Employee"."EmployeeId" = e_2."EmployeeId"
						) d_2 ON 1=1
			) as "SumCustom_1",
			(
				SELECT
					SUM(CASE
						WHEN d_3.not_null IS NOT NULL THEN CASE
							WHEN d_3."StartHour" IS NOT NULL THEN d_3."StartHour"
							ELSE d_3."EndHour"
						END
						ELSE 0::decimal
					END)
				FROM
					(
						SELECT
							0 as "WithoutParentReference"
					) t4
						LEFT JOIN (
							SELECT
								1 as not_null,
								"a_LeaveRequestDateEntries_3"."StartHour",
								"a_LeaveRequestDateEntries_3"."EndHour"
							FROM
								"LeaveRequest" e_3
									INNER JOIN "LeaveRequestDateEntry" "a_LeaveRequestDateEntries_3" ON e_3."Id" = "a_LeaveRequestDateEntries_3"."LeaveRequestId"
							WHERE
								"a_Employee"."EmployeeId" = e_3."EmployeeId"
						) d_3 ON 1=1
			) as "SUM_2"
		FROM
			"EmployeeTimeOffBalance" tracking
				INNER JOIN "Employee" "a_Employee" ON tracking."EmployeeId" = "a_Employee"."EmployeeId"
	) t5
ORDER BY
	Coalesce(t5."SUM_1", 0),
	Coalesce(t5."SumCustom", 0),
	Coalesce(t5."SumCustom_1", 0),
	Coalesce(t5."SUM_2", 0) DESC

