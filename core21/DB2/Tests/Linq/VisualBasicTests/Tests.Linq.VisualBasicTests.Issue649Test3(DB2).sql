BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "activity649"
(
	"activityid" Int       GENERATED ALWAYS AS IDENTITY NOT NULL,
	"personid"   Int                                    NOT NULL,
	"added"      timestamp                              NOT NULL,

	CONSTRAINT "PK_activity649" PRIMARY KEY ("activityid")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "person649"
(
	"personid"   Int           GENERATED ALWAYS AS IDENTITY NOT NULL,
	"personname" NVarChar(255)                              NOT NULL,

	CONSTRAINT "PK_person649" PRIMARY KEY ("personid")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @added Timestamp(20) -- DateTime
SET     @added = '2017-01-01-00.00.00.000000'

SELECT
	"a_Person"."personid",
	"a_Person"."personname",
	Max("f"."added")
FROM
	"activity649" "f"
		INNER JOIN "person649" "a_Person" ON "f"."personid" = "a_Person"."personid"
WHERE
	"f"."added" >= @added
GROUP BY
	"a_Person"."personid",
	"a_Person"."personname"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "person649"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "activity649"

