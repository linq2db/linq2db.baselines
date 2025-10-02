BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "TestBool"
(
	"Id",
	"Value"
)
VALUES
(
	1,
	1
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

UPDATE
	"TestBool" "t1"
SET
	"Value" = CASE
		WHEN "t1"."Value" = 0 THEN 1
		WHEN "t1"."Value" = 1 THEN 0
		ELSE NULL
	END

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

UPDATE
	"TestBool" "t1"
SET
	"Id" = 1,
	"Value" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestBool" "t1"
LIMIT 2

