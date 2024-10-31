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
	"a_1"."Id",
	"a_1"."NullValue"
FROM
	(
		SELECT
			"a"."Id",
			CASE
				WHEN "a"."NullValue" IS NOT NULL THEN "a"."NullValue"
				ELSE 0
			END as "KEYNUMB",
			"a"."NullValue"
		FROM
			"SampleClass" "a"
	) "a_1"
WHERE
	"a_1"."Id" = 0 AND "a_1"."KEYNUMB" = 0 OR "a_1"."Id" = 1 AND "a_1"."KEYNUMB" = 1 OR
	"a_1"."Id" = 2 AND "a_1"."KEYNUMB" = 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SampleClass"

