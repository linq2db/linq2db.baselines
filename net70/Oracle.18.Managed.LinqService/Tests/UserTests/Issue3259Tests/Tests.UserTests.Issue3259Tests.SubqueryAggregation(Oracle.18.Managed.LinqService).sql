BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EmployeeTimeOffBalance"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "EmployeeTimeOffBalance"
		(
			"Id"               Int NOT NULL,
			"TrackingTimeType" Int NOT NULL,
			"EmployeeId"       Int NOT NULL,

			CONSTRAINT "PK_EmployeeTimeOffBalance" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @TrackingTimeType Int32
SET     @TrackingTimeType = 0
DECLARE @EmployeeId Int32
SET     @EmployeeId = 1

INSERT INTO "EmployeeTimeOffBalance"
(
	"Id",
	"TrackingTimeType",
	"EmployeeId"
)
VALUES
(
	:Id,
	:TrackingTimeType,
	:EmployeeId
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @TrackingTimeType Int32
SET     @TrackingTimeType = 1
DECLARE @EmployeeId Int32
SET     @EmployeeId = 2

INSERT INTO "EmployeeTimeOffBalance"
(
	"Id",
	"TrackingTimeType",
	"EmployeeId"
)
VALUES
(
	:Id,
	:TrackingTimeType,
	:EmployeeId
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Employee"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Employee"
		(
			"EmployeeId" Int NOT NULL,

			CONSTRAINT "PK_Employee" PRIMARY KEY ("EmployeeId")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO "Employee"
(
	"EmployeeId"
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2

INSERT INTO "Employee"
(
	"EmployeeId"
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "LeaveRequest"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "LeaveRequest"
		(
			"Id"         Int NOT NULL,
			"EmployeeId" Int NOT NULL,

			CONSTRAINT "PK_LeaveRequest" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @EmployeeId Int32
SET     @EmployeeId = 1

INSERT INTO "LeaveRequest"
(
	"Id",
	"EmployeeId"
)
VALUES
(
	:Id,
	:EmployeeId
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @EmployeeId Int32
SET     @EmployeeId = 1

INSERT INTO "LeaveRequest"
(
	"Id",
	"EmployeeId"
)
VALUES
(
	:Id,
	:EmployeeId
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @EmployeeId Int32
SET     @EmployeeId = 2

INSERT INTO "LeaveRequest"
(
	"Id",
	"EmployeeId"
)
VALUES
(
	:Id,
	:EmployeeId
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 4
DECLARE @EmployeeId Int32
SET     @EmployeeId = 2

INSERT INTO "LeaveRequest"
(
	"Id",
	"EmployeeId"
)
VALUES
(
	:Id,
	:EmployeeId
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "LeaveRequestDateEntry"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "LeaveRequestDateEntry"
		(
			"Id"             Int     NOT NULL,
			"EndHour"        Decimal     NULL,
			"StartHour"      Decimal     NULL,
			"LeaveRequestId" Int     NOT NULL,

			CONSTRAINT "PK_LeaveRequestDateEntry" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @EndHour Decimal(2, 0)
SET     @EndHour = 12
DECLARE @StartHour Decimal(1, 0)
SET     @StartHour = 1
DECLARE @LeaveRequestId Int32
SET     @LeaveRequestId = 1

INSERT INTO "LeaveRequestDateEntry"
(
	"Id",
	"EndHour",
	"StartHour",
	"LeaveRequestId"
)
VALUES
(
	:Id,
	:EndHour,
	:StartHour,
	:LeaveRequestId
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @EndHour Decimal(2, 0)
SET     @EndHour = 13
DECLARE @StartHour Decimal(1, 0)
SET     @StartHour = 2
DECLARE @LeaveRequestId Int32
SET     @LeaveRequestId = 1

INSERT INTO "LeaveRequestDateEntry"
(
	"Id",
	"EndHour",
	"StartHour",
	"LeaveRequestId"
)
VALUES
(
	:Id,
	:EndHour,
	:StartHour,
	:LeaveRequestId
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @EndHour Decimal(2, 0)
SET     @EndHour = 14
DECLARE @StartHour Decimal(1, 0)
SET     @StartHour = 3
DECLARE @LeaveRequestId Int32
SET     @LeaveRequestId = 2

INSERT INTO "LeaveRequestDateEntry"
(
	"Id",
	"EndHour",
	"StartHour",
	"LeaveRequestId"
)
VALUES
(
	:Id,
	:EndHour,
	:StartHour,
	:LeaveRequestId
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 4
DECLARE @EndHour Decimal(2, 0)
SET     @EndHour = 15
DECLARE @StartHour Decimal(1, 0)
SET     @StartHour = 4
DECLARE @LeaveRequestId Int32
SET     @LeaveRequestId = 2

INSERT INTO "LeaveRequestDateEntry"
(
	"Id",
	"EndHour",
	"StartHour",
	"LeaveRequestId"
)
VALUES
(
	:Id,
	:EndHour,
	:StartHour,
	:LeaveRequestId
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."WithParentReference",
	t1."WithParentReferenceCustom1",
	t1."WithParentReferenceCustom2",
	t1."WithoutParentReference"
FROM
	(
		SELECT
			(
				SELECT
					Sum(CASE
						WHEN tracking."TrackingTimeType" = 0
							THEN c_1."StartHour"
						ELSE c_1."EndHour"
					END)
				FROM
					"LeaveRequest" e
						INNER JOIN "LeaveRequestDateEntry" c_1 ON e."Id" = c_1."LeaveRequestId"
				WHERE
					a_Employee."EmployeeId" = e."EmployeeId"
			) as "WithParentReference",
			(
				SELECT
					Sum(CASE
						WHEN tracking."TrackingTimeType" = 0
							THEN c_2."StartHour"
						ELSE c_2."EndHour"
					END)
				FROM
					"LeaveRequest" e_1
						INNER JOIN "LeaveRequestDateEntry" c_2 ON e_1."Id" = c_2."LeaveRequestId"
				WHERE
					a_Employee."EmployeeId" = e_1."EmployeeId"
			) as "WithParentReferenceCustom1",
			(
				SELECT
					Sum(CASE
						WHEN tracking."TrackingTimeType" = 0
							THEN c_3."StartHour"
						ELSE c_3."EndHour"
					END)
				FROM
					"LeaveRequest" e_2
						INNER JOIN "LeaveRequestDateEntry" c_3 ON e_2."Id" = c_3."LeaveRequestId"
				WHERE
					a_Employee."EmployeeId" = e_2."EmployeeId"
			) as "WithParentReferenceCustom2",
			(
				SELECT
					Sum(CASE
						WHEN c_4."StartHour" IS NOT NULL
							THEN c_4."StartHour"
						ELSE c_4."EndHour"
					END)
				FROM
					"LeaveRequest" e_3
						INNER JOIN "LeaveRequestDateEntry" c_4 ON e_3."Id" = c_4."LeaveRequestId"
				WHERE
					a_Employee."EmployeeId" = e_3."EmployeeId"
			) as "WithoutParentReference"
		FROM
			"EmployeeTimeOffBalance" tracking
				INNER JOIN "Employee" a_Employee ON tracking."EmployeeId" = a_Employee."EmployeeId"
	) t1
ORDER BY
	Nvl(t1."WithParentReference", 0),
	Nvl(t1."WithParentReferenceCustom1", 0),
	Nvl(t1."WithParentReferenceCustom2", 0),
	Nvl(t1."WithoutParentReference", 0) DESC

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "LeaveRequestDateEntry"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "LeaveRequest"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Employee"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EmployeeTimeOffBalance"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

