BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SampleClass"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "SampleClass"
(
	"Id"    Integer NOT NULL,
	"Value" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value  -- Int32
SET     @Value = 100

INSERT INTO "SampleClass"
(
	"Id",
	"Value"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."Value",
	1
FROM
	"SampleClass" "t"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SampleClass"

