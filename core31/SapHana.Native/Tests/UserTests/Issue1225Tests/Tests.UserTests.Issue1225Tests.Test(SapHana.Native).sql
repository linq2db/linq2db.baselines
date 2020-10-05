BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Task"
(
	"Id" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "TaskStage"
(
	"Id"     Integer NOT NULL,
	"TaskId" Integer NOT NULL,
	"Actual" TinyInt NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "Task"
(
	"Id"
)
VALUES
(
	:"Id"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO "Task"
(
	"Id"
)
VALUES
(
	:"Id"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @TaskId  -- Int32
SET     @TaskId = 1
DECLARE @Actual  -- Byte
SET     @Actual = 1

INSERT INTO "TaskStage"
(
	"Id",
	"TaskId",
	"Actual"
)
VALUES
(
	:"Id",
	:"TaskId",
	:"Actual"
)

BeforeExecute
-- SapHana.Native SapHana

SELECT
	'Id',
	"selectParam"."Id",
	Sum(CASE
		WHEN "a_ActualStage"."Id" IS NULL
			THEN NULL
		ELSE "a_ActualStage"."Id"
	END)
FROM
	"Task" "selectParam"
		LEFT JOIN "TaskStage" "a_ActualStage" ON "selectParam"."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = 1
GROUP BY
	"selectParam"."Id"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "TaskStage"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Task"

