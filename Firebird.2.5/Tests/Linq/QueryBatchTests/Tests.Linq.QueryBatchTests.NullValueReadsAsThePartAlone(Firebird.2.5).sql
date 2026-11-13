-- Firebird.2.5 Firebird
SELECT FIRST 1
	"i"."Value"
FROM
	"BatchItem" "i"
WHERE
	"i"."Id" = 3

-- Firebird.2.5 Firebird
SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."GroupId",
	"t1"."Name"
FROM
	"BatchItem" "t1"

-- Firebird.2.5 Firebird
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
			SELECT FIRST 1
				1 as "Item1",
				"i"."Value" as "Item1_1"
			FROM
				"BatchItem" "i"
			WHERE
				"i"."Id" = 3
		) "t1" ON 1=1

