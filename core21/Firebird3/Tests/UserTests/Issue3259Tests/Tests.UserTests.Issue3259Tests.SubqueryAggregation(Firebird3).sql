BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "EmployeeTimeOffBalance"
(
	"Id"               Int NOT NULL,
	"TrackingTimeType" Int NOT NULL,
	"EmployeeId"       Int NOT NULL,

	CONSTRAINT "PK_EmployeeTimeOffBalance" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Employee"
(
	"EmployeeId" Int NOT NULL,

	CONSTRAINT "PK_Employee" PRIMARY KEY ("EmployeeId")
)

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "LeaveRequest"
(
	"Id"         Int NOT NULL,
	"EmployeeId" Int NOT NULL,

	CONSTRAINT "PK_LeaveRequest" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "LeaveRequestDateEntry"
(
	"Id"             Int     NOT NULL,
	"EndHour"        Decimal,
	"StartHour"      Decimal,
	"LeaveRequestId" Int     NOT NULL,

	CONSTRAINT "PK_LeaveRequestDateEntry" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird3 Firebird

SELECT
	(
		SELECT
			Sum(CASE
				WHEN "tracking"."TrackingTimeType" = 0
					THEN "c_1"."StartHour"
				ELSE "c_1"."EndHour"
			END)
		FROM
			"LeaveRequest" "e"
				INNER JOIN "LeaveRequestDateEntry" "c_1" ON "e"."Id" = "c_1"."LeaveRequestId"
		WHERE
			"a_Employee"."EmployeeId" = "e"."EmployeeId"
	),
	(
		SELECT
			Sum(CASE
				WHEN "tracking"."TrackingTimeType" = 0
					THEN "c_2"."StartHour"
				ELSE "c_2"."EndHour"
			END)
		FROM
			"LeaveRequest" "e_1"
				INNER JOIN "LeaveRequestDateEntry" "c_2" ON "e_1"."Id" = "c_2"."LeaveRequestId"
		WHERE
			"a_Employee"."EmployeeId" = "e_1"."EmployeeId"
	),
	(
		SELECT
			Sum(CASE
				WHEN "tracking"."TrackingTimeType" = 0
					THEN "c_3"."StartHour"
				ELSE "c_3"."EndHour"
			END)
		FROM
			"LeaveRequest" "e_2"
				INNER JOIN "LeaveRequestDateEntry" "c_3" ON "e_2"."Id" = "c_3"."LeaveRequestId"
		WHERE
			"a_Employee"."EmployeeId" = "e_2"."EmployeeId"
	),
	(
		SELECT
			Sum(CASE
				WHEN "c_4"."StartHour" IS NOT NULL
					THEN "c_4"."StartHour"
				ELSE "c_4"."EndHour"
			END)
		FROM
			"LeaveRequest" "e_3"
				INNER JOIN "LeaveRequestDateEntry" "c_4" ON "e_3"."Id" = "c_4"."LeaveRequestId"
		WHERE
			"a_Employee"."EmployeeId" = "e_3"."EmployeeId"
	)
FROM
	"EmployeeTimeOffBalance" "tracking"
		INNER JOIN "Employee" "a_Employee" ON "tracking"."EmployeeId" = "a_Employee"."EmployeeId"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'LeaveRequestDateEntry')) THEN
		EXECUTE STATEMENT 'DROP TABLE "LeaveRequestDateEntry"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'LeaveRequest')) THEN
		EXECUTE STATEMENT 'DROP TABLE "LeaveRequest"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Employee')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Employee"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EmployeeTimeOffBalance')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EmployeeTimeOffBalance"';
END

