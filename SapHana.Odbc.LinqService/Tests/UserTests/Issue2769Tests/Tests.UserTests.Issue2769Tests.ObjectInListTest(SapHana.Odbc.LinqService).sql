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

SELECT
	"a"."Id",
	"a"."NullValue"
FROM
	"SampleClass" "a"
WHERE
	("a"."Id" = 0 AND ("a"."NullValue" = 0 AND "a"."NullValue" IS NOT NULL OR "a"."NullValue" IS NULL) OR "a"."Id" = 1 AND "a"."NullValue" = 1 AND "a"."NullValue" IS NOT NULL OR "a"."Id" = 2 AND "a"."NullValue" = 2 AND "a"."NullValue" IS NOT NULL)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SampleClass"

