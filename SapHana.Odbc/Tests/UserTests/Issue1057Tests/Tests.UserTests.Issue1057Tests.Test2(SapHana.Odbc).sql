BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Task"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Task"
(
	"Id"         Integer       NOT NULL,
	"TargetName" NVarChar(255)     NULL,

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
DECLARE @TargetName NVarChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO "Task"
(
	"Id",
	"TargetName"
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
DECLARE @TargetName NVarChar(4) -- String
SET     @TargetName = 'None'

INSERT INTO "Task"
(
	"Id",
	"TargetName"
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
	"p"."Id",
	"p"."TargetName",
	"a_ActualStage"."Id"
FROM
	"Task" "p"
		LEFT JOIN "TaskStage" "a_ActualStage" ON "p"."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = 1
WHERE
	"p"."TargetName" = 'bda.Requests'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."TargetName",
	"p"."Id",
	"a_ActualStage"."Id"
FROM
	"Task" "p"
		LEFT JOIN "TaskStage" "a_ActualStage" ON "p"."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = 1
ORDER BY
	"p"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TaskStage"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Task"

