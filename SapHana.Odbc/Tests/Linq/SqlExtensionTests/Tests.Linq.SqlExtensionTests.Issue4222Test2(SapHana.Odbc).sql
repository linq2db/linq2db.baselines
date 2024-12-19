BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Entry"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Entry"
(
	"Id"     Char (36)     NOT NULL,
	"RecSrc" NVarChar(255)     NULL,
	"Value"  Integer       NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"e"."Id",
	"e"."RecSrc",
	"e"."Value"
FROM
	"Entry" "e"
WHERE
	"e"."RecSrc" = 'default' AND "e"."Value" = 2007 OR
	"e"."RecSrc" = 'other' AND "e"."Value" = 2008

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Entry"

