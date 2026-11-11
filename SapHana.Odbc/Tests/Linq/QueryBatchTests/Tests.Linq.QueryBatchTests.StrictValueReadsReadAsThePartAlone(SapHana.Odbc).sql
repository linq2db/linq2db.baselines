-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."not_null",
	"t1"."Value_1",
	"t2"."not_null",
	"t2"."Name",
	"t3"."Id",
	"t3"."Name",
	(
		SELECT
			COUNT(*)
		FROM
			"BatchItem" "t5"
	)
FROM
	(
		SELECT
			1 as "c1"
		FROM DUMMY
	) "t4"
		LEFT JOIN (
			SELECT
				1 as "not_null",
				"i"."Value" as "Value_1"
			FROM
				"BatchItem" "i"
			WHERE
				"i"."Id" = 3
			LIMIT 1
		) "t1" ON 1=1
		LEFT JOIN (
			SELECT
				1 as "not_null",
				"i_1"."Name"
			FROM
				"BatchItem" "i_1"
			WHERE
				"i_1"."Id" = 5
			LIMIT 1
		) "t2" ON 1=1
		CROSS JOIN (
			SELECT
				"i_2"."Id",
				"i_2"."Name"
			FROM
				"BatchItem" "i_2"
			WHERE
				"i_2"."Id" = 4
			LIMIT 1
		) "t3"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"i"."Value"
FROM
	"BatchItem" "i"
WHERE
	"i"."Id" = 3
LIMIT 1

-- SapHana.Odbc SapHanaOdbc
SELECT
	"i"."Name"
FROM
	"BatchItem" "i"
WHERE
	"i"."Id" = 5
LIMIT 1

