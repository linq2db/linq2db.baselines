﻿BeforeExecute
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
	"r"."Id",
	"r"."FistName" || ' ' || "r"."LastName"
FROM
	"Issue3323Table" "r"
UNION ALL
SELECT
	"r_1"."Id" + 1,
	"r_1"."Text"
FROM
	"Issue3323Table" "r_1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."Id" + 1,
	"r"."Text"
FROM
	"Issue3323Table" "r"
UNION ALL
SELECT
	"r_1"."Id",
	"r_1"."FistName" || ' ' || "r_1"."LastName"
FROM
	"Issue3323Table" "r_1"

