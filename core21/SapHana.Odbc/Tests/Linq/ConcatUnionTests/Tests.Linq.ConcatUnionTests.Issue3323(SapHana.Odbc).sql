BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue3323Table"
(
	"Id"       Integer       NOT NULL,
	"FistName" NVarChar(255)     NULL,
	"LastName" NVarChar(255)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "Issue3323Table"
(
	"Id",
	"FistName",
	"LastName"
)
VALUES
(
	1,
	'one',
	'two'
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."FistName" || ' ' || "t1"."LastName"
FROM
	"Issue3323Table" "t1"
UNION ALL
SELECT
	"t2"."Id",
	"t2"."FistName" || ' ' || "t2"."LastName"
FROM
	"Issue3323Table" "t2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3323Table"

