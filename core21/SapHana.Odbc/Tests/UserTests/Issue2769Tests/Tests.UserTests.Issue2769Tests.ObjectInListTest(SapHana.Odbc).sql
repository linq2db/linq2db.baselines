BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "SampleClass"
(
	"Id"        Integer NOT NULL,
	"NullValue" Integer     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"a"."Id",
	"a"."NullValue"
FROM
	"SampleClass" "a"
WHERE
	("a"."Id" = 0 AND Coalesce("a"."NullValue", 0) = 0 OR "a"."Id" = 1 AND Coalesce("a"."NullValue", 0) = 1 OR "a"."Id" = 2 AND Coalesce("a"."NullValue", 0) = 2)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SampleClass"

