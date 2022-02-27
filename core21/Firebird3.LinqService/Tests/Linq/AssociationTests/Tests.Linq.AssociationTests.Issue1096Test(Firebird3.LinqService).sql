BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Issue1096Task"
(
	"Id"         Int                                    NOT NULL,
	"TargetName" VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Issue1096TaskStage"
(
	"Id"     Int  NOT NULL,
	"TaskId" Int  NOT NULL,
	"Actual" CHAR NOT NULL,

	CONSTRAINT "PK_Issue1096TaskStage" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @TargetName VarChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO "Issue1096Task"
(
	"Id",
	"TargetName"
)
VALUES
(
	@Id,
	@TargetName
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @TargetName VarChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO "Issue1096Task"
(
	"Id",
	"TargetName"
)
VALUES
(
	@Id,
	@TargetName
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @TaskId Integer -- Int32
SET     @TaskId = 1
DECLARE @Actual Char(1) -- String
SET     @Actual = '1'

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

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."Id",
	"t1"."TargetName",
	"t1"."Id_1",
	"t1"."TaskId",
	"t1"."Actual"
FROM
	(
		SELECT DISTINCT
			"t"."Id",
			"t"."TargetName",
			"a_ActualStage"."Id" as "Id_1",
			"a_ActualStage"."TaskId",
			"a_ActualStage"."Actual"
		FROM
			"Issue1096Task" "t"
				LEFT JOIN "Issue1096TaskStage" "a_ActualStage" ON "t"."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = 1
	) "t1"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "Issue1096TaskStage"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "Issue1096Task"

