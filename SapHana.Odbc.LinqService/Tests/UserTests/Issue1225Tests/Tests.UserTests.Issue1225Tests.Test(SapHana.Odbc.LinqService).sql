BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Task"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Task"
(
	"Id" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TaskStage"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TaskStage"
(
	"Id"     Integer NOT NULL,
	"TaskId" Integer NOT NULL,
	"Actual" TinyInt NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "Task"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO "Task"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
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
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	'Id',
	"it"."Id",
	SUM("a_ActualStage"."Id")
FROM
	"Task" "it"
		LEFT JOIN "TaskStage" "a_ActualStage" ON "it"."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = 1
GROUP BY
	"it"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TaskStage"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Task"

