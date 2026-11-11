-- SapHana.Native SapHana
SELECT
	"i"."Value"
FROM
	"BatchItem" "i"
LIMIT 2

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
				"i"."Value" as "Item1_1"
			FROM
				"BatchItem" "i"
		) "t1" ON 1=1

