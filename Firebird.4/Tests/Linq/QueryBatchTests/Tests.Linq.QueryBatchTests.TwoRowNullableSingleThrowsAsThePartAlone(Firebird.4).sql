-- Firebird.4 Firebird4
SELECT
	"i"."Value"
FROM
	"BatchItem" "i"
FETCH NEXT 2 ROWS ONLY

-- Firebird.4 Firebird4
SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."GroupId",
	"t1"."Name"
FROM
	"BatchItem" "t1"

-- Firebird.4 Firebird4
SELECT
	"t1"."Item1",
	"t1"."Item1_1"
FROM
	(
		SELECT
			1 as "c1"
		FROM rdb$database
	) "t2"
		LEFT JOIN (
			SELECT
				1 as "Item1",
				"i"."Value" as "Item1_1"
			FROM
				"BatchItem" "i"
		) "t1" ON 1=1

