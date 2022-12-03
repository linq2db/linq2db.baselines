BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SampleClass"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "SampleClass"
(
	"Id"        Integer NOT NULL,
	"NullValue" Integer     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @_default  -- Int32
SET     @_default = 0
DECLARE @_default_1  -- Int32
SET     @_default_1 = 0
DECLARE @_default_2  -- Int32
SET     @_default_2 = 0

SELECT
	"a"."Id",
	"a"."NullValue"
FROM
	"SampleClass" "a"
WHERE
	("a"."Id" = 0 AND Coalesce("a"."NullValue", ?) = 0 OR "a"."Id" = 1 AND Coalesce("a"."NullValue", ?) = 1 OR "a"."Id" = 2 AND Coalesce("a"."NullValue", ?) = 2)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SampleClass"

