-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."GroupId",
	"t1"."Name"
FROM
	"BatchItem" "t1"

-- SapHana.Native SapHana
SELECT
	"t1"."not_null",
	"t1"."Item1"
FROM
	(
		SELECT
			1 as "c1"
		FROM DUMMY
	) "t2"
		LEFT JOIN (
			SELECT
				1 as "not_null",
				"i"."Id" as "Item1"
			FROM
				"BatchItem" "i"
			WHERE
				"i"."Id" = 1
		) "t1" ON 1=1

-- SapHana.Native SapHana
SELECT
	"i"."Id"
FROM
	"BatchItem" "i"
WHERE
	"i"."Id" = 1
LIMIT 2

