BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TableToInsert"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TableToInsert"
(
	"Id"    Integer       NOT NULL,
	"Value" NVarChar(255)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"TableToInsert" "t"
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			(SELECT NULL "Id", NULL "Value" FROM DUMMY WHERE 1 = 0) "r"
		WHERE
			"t"."Id" = "r"."Id" AND ("t"."Value" = "r"."Value" OR "t"."Value" IS NULL AND "r"."Value" IS NULL)
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TableToInsert"

