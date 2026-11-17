-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."GroupId",
	"t1"."Name"
FROM
	"BatchItem" "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @Item1 Int -- Int32
SET     @Item1 = 2
DECLARE @Item1 Int -- Int32
SET     @Item1 = 2

SELECT
	"t1"."Item1_1",
	CASE
		WHEN "t1"."Item1" IS NOT NULL THEN ?
		ELSE NULL
	END
FROM
	(
		SELECT
			1 as "c1"
		FROM DUMMY
	) "t2"
		LEFT JOIN (
			SELECT
				? as "Item1",
				1 as "Item1_1"
			FROM
				"BatchItem" "i"
			WHERE
				"i"."Id" = 1
			LIMIT 1
		) "t1" ON 1=1

-- SapHana.Odbc SapHanaOdbc
SELECT
	1
FROM
	"BatchItem" "i"
WHERE
	"i"."Id" = 1
LIMIT 1

