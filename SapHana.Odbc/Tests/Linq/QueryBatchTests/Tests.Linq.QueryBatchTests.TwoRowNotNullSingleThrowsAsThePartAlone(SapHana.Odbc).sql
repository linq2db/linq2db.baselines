-- SapHana.Odbc SapHanaOdbc
SELECT
	"i"."Id"
FROM
	"BatchItem" "i"
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."GroupId",
	"t1"."Name"
FROM
	"BatchItem" "t1"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Item1",
	"t1"."Item1_1"
FROM
	(
		SELECT
			1 as "c1"
		FROM DUMMY
	) "t2"
		LEFT JOIN (
			SELECT
				1 as "Item1",
				"i"."Id" as "Item1_1"
			FROM
				"BatchItem" "i"
		) "t1" ON 1=1

