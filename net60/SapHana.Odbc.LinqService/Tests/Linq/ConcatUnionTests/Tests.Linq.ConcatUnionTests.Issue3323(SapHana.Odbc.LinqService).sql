BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3323Table"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue3323Table"
(
	"Id"       Integer       NOT NULL,
	"FistName" NVarChar(255)     NULL,
	"LastName" NVarChar(255)     NULL,
	"Text"     NVarChar(255) NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "Issue3323Table"
(
	"Id",
	"FistName",
	"LastName",
	"Text"
)
VALUES
(
	1,
	'one',
	'two',
	'text'
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Text",
	"t1"."FistName" || ' ' || "t1"."LastName"
FROM
	"Issue3323Table" "t1"
UNION ALL
SELECT
	"t2"."Id",
	"t2"."Text",
	"t2"."FistName" || ' ' || "t2"."LastName"
FROM
	"Issue3323Table" "t2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3323Table"

