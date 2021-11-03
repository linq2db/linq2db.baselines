BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "EmployeeTimeOffBalance"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "EmployeeTimeOffBalance"
(
	"Id"               Integer NOT NULL,
	"TrackingTimeType" Integer NOT NULL,
	"EmployeeId"       Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @TrackingTimeType  -- Int32
SET     @TrackingTimeType = 0
DECLARE @EmployeeId  -- Int32
SET     @EmployeeId = 1

INSERT INTO "EmployeeTimeOffBalance"
(
	"Id",
	"TrackingTimeType",
	"EmployeeId"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @TrackingTimeType  -- Int32
SET     @TrackingTimeType = 1
DECLARE @EmployeeId  -- Int32
SET     @EmployeeId = 2

INSERT INTO "EmployeeTimeOffBalance"
(
	"Id",
	"TrackingTimeType",
	"EmployeeId"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Employee"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Employee"
(
	"EmployeeId" Integer NOT NULL,

	PRIMARY KEY ("EmployeeId")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "Employee"
(
	"EmployeeId"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO "Employee"
(
	"EmployeeId"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "LeaveRequest"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "LeaveRequest"
(
	"Id"         Integer NOT NULL,
	"EmployeeId" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @EmployeeId  -- Int32
SET     @EmployeeId = 1

INSERT INTO "LeaveRequest"
(
	"Id",
	"EmployeeId"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @EmployeeId  -- Int32
SET     @EmployeeId = 1

INSERT INTO "LeaveRequest"
(
	"Id",
	"EmployeeId"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @EmployeeId  -- Int32
SET     @EmployeeId = 2

INSERT INTO "LeaveRequest"
(
	"Id",
	"EmployeeId"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @EmployeeId  -- Int32
SET     @EmployeeId = 2

INSERT INTO "LeaveRequest"
(
	"Id",
	"EmployeeId"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "LeaveRequestDateEntry"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "LeaveRequestDateEntry"
(
	"Id"             Integer NOT NULL,
	"EndHour"        Decimal     NULL,
	"StartHour"      Decimal     NULL,
	"LeaveRequestId" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @EndHour Decimal(2, 0)
SET     @EndHour = 12
DECLARE @StartHour Decimal(1, 0)
SET     @StartHour = 1
DECLARE @LeaveRequestId  -- Int32
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
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @EndHour Decimal(2, 0)
SET     @EndHour = 13
DECLARE @StartHour Decimal(1, 0)
SET     @StartHour = 2
DECLARE @LeaveRequestId  -- Int32
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
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @EndHour Decimal(2, 0)
SET     @EndHour = 14
DECLARE @StartHour Decimal(1, 0)
SET     @StartHour = 3
DECLARE @LeaveRequestId  -- Int32
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
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @EndHour Decimal(2, 0)
SET     @EndHour = 15
DECLARE @StartHour Decimal(1, 0)
SET     @StartHour = 4
DECLARE @LeaveRequestId  -- Int32
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
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t4"."WithParentReference",
	"t4"."WithParentReferenceCustom1",
	"t4"."WithParentReferenceCustom2",
	"t4"."WithoutParentReference"
FROM
	(
		SELECT
			(
				SELECT
					Sum("t1"."c1")
				FROM
					(
						SELECT
							CASE
								WHEN "tracking"."TrackingTimeType" = 0
									THEN "c_1"."StartHour"
								ELSE "c_1"."EndHour"
							END as "c1"
						FROM
							"LeaveRequest" "e"
								INNER JOIN "LeaveRequestDateEntry" "c_1" ON "e"."Id" = "c_1"."LeaveRequestId"
						WHERE
							"a_Employee"."EmployeeId" = "e"."EmployeeId"
					) "t1"
			) as "WithParentReference",
			(
				SELECT
					Sum("t2"."c1")
				FROM
					(
						SELECT
							CASE
								WHEN "tracking"."TrackingTimeType" = 0
									THEN "c_2"."StartHour"
								ELSE "c_2"."EndHour"
							END as "c1"
						FROM
							"LeaveRequest" "e_1"
								INNER JOIN "LeaveRequestDateEntry" "c_2" ON "e_1"."Id" = "c_2"."LeaveRequestId"
						WHERE
							"a_Employee"."EmployeeId" = "e_1"."EmployeeId"
					) "t2"
			) as "WithParentReferenceCustom1",
			(
				SELECT
					Sum("t3"."c1")
				FROM
					(
						SELECT
							CASE
								WHEN "tracking"."TrackingTimeType" = 0
									THEN "c_3"."StartHour"
								ELSE "c_3"."EndHour"
							END as "c1"
						FROM
							"LeaveRequest" "e_2"
								INNER JOIN "LeaveRequestDateEntry" "c_3" ON "e_2"."Id" = "c_3"."LeaveRequestId"
						WHERE
							"a_Employee"."EmployeeId" = "e_2"."EmployeeId"
					) "t3"
			) as "WithParentReferenceCustom2",
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
			) as "WithoutParentReference"
		FROM
			"EmployeeTimeOffBalance" "tracking"
				INNER JOIN "Employee" "a_Employee" ON "tracking"."EmployeeId" = "a_Employee"."EmployeeId"
	) "t4"
ORDER BY
	Coalesce("t4"."WithParentReference", 0),
	Coalesce("t4"."WithParentReferenceCustom1", 0),
	Coalesce("t4"."WithParentReferenceCustom2", 0),
	Coalesce("t4"."WithoutParentReference", 0) DESC

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "LeaveRequestDateEntry"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "LeaveRequest"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Employee"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "EmployeeTimeOffBalance"

