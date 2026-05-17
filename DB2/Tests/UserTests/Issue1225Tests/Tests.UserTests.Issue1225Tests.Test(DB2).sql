-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO "Task"
(
	"Id"
)
VALUES
(
	@Id
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO "Task"
(
	"Id"
)
VALUES
(
	@Id
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @TaskId Integer(4) -- Int32
SET     @TaskId = 1
DECLARE @Actual SmallInt(4) -- Int16
SET     @Actual = 1

INSERT INTO "TaskStage"
(
	"Id",
	"TaskId",
	"Actual"
)
VALUES
(
	@Id,
	@TaskId,
	@Actual
)

-- DB2 DB2.LUW DB2LUW

SELECT
	'Id',
	"it"."Id",
	SUM("a_ActualStage"."Id")
FROM
	"Task" "it"
		LEFT JOIN "TaskStage" "a_ActualStage" ON "it"."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = 1
GROUP BY
	"it"."Id"

