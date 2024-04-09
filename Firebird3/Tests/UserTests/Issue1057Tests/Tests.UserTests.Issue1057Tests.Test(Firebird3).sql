﻿BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Task')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Task"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Task')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Task"
			(
				"Id"         Int                                    NOT NULL,
				"TargetName" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_Task" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TaskStage')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TaskStage"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TaskStage')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TaskStage"
			(
				"Id"     Int     NOT NULL,
				"TaskId" Int     NOT NULL,
				"Actual" char(1) NOT NULL,

				CONSTRAINT "PK_TaskStage" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @TargetName VarChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO "Task"
(
	"Id",
	"TargetName"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@TargetName AS VARCHAR(12))
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @TargetName VarChar(4) -- String
SET     @TargetName = 'None'

INSERT INTO "Task"
(
	"Id",
	"TargetName"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@TargetName AS VARCHAR(4))
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @TaskId Integer -- Int32
SET     @TaskId = 1
DECLARE @Actual Char(1) -- String
SET     @Actual = '1'

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
	CAST(@Actual AS char(1))
)

BeforeExecute
-- Firebird3 Firebird

SELECT
	"p"."Id",
	"p"."TargetName",
	"a_ActualStage"."Id"
FROM
	"Task" "p"
		LEFT JOIN "TaskStage" "a_ActualStage" ON "p"."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = 1
WHERE
	"p"."TargetName" = 'bda.Requests'

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TaskStage')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TaskStage"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Task')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Task"';
END

