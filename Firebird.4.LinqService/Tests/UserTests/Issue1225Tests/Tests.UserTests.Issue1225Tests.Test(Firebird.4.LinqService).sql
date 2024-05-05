BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Task')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Task"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Task')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Task"
			(
				"Id" Int NOT NULL,

				CONSTRAINT "PK_Task" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TaskStage')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TaskStage"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TaskStage')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TaskStage"
			(
				"Id"     Int     NOT NULL,
				"TaskId" Int     NOT NULL,
				"Actual" BOOLEAN NOT NULL,

				CONSTRAINT "PK_TaskStage" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "Task"
(
	"Id"
)
VALUES
(
	CAST(@Id AS Int)
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "Task"
(
	"Id"
)
VALUES
(
	CAST(@Id AS Int)
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @TaskId Integer -- Int32
SET     @TaskId = 1
DECLARE @Actual Boolean
SET     @Actual = TRUE

INSERT INTO "TaskStage"
(
	"Id",
	"TaskId",
	"Actual"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@TaskId AS Int),
	CAST(@Actual AS BOOLEAN)
)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"it_1"."Name",
	"it_1"."Value_1",
	SUM(CASE
		WHEN "it_1"."Id" IS NULL THEN NULL
		ELSE "it_1"."Id"
	END)
FROM
	(
		SELECT
			'Id' as "Name",
			"it"."Id" as "Value_1",
			"a_ActualStage"."Id"
		FROM
			"Task" "it"
				LEFT JOIN "TaskStage" "a_ActualStage" ON "it"."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = TRUE
	) "it_1"
GROUP BY
	"it_1"."Name",
	"it_1"."Value_1"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TaskStage')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TaskStage"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Task')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Task"';
END

