-- DB2 DB2.LUW DB2LUW
DECLARE @Pk Integer(4) -- Int32
SET     @Pk = 1
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @TargetName VarChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO "Issue1096Task"
(
	"Pk",
	"Id",
	"TargetName"
)
VALUES
(
	@Pk,
	@Id,
	@TargetName
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @TaskId Integer(4) -- Int32
SET     @TaskId = 1
DECLARE @Actual SmallInt(4) -- Int16
SET     @Actual = 1

INSERT INTO "Issue1096TaskStage"
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

SELECT DISTINCT
	"t"."Pk",
	"t"."Id",
	"t"."TargetName",
	"a_ActualStage"."Id",
	"a_ActualStage"."TaskId",
	"a_ActualStage"."Actual"
FROM
	"Issue1096Task" "t"
		LEFT JOIN "Issue1096TaskStage" "a_ActualStage" ON "t"."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = 1

