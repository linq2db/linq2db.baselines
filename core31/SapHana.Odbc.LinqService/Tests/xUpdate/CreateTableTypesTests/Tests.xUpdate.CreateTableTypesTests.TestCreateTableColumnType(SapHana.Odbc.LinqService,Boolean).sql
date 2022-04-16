BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "CreateTableTypes"
(
	"Id"      Integer NOT NULL,
	"Boolean" TinyInt NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Boolean_1  -- Byte
SET     @Boolean_1 = 0

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Boolean"
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
DECLARE @Boolean_1  -- Byte
SET     @Boolean_1 = 1

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Boolean"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Boolean"
FROM
	"CreateTableTypes" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "CreateTableTypes"

