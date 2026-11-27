-- Firebird.3 Firebird3
SELECT
	"i"."Id",
	"i"."Value",
	"i"."GroupId",
	"i"."Name"
FROM
	"BatchItem" "i"
WHERE
	"i"."Id" < 3
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."GroupId",
	"t1"."Name"
FROM
	"BatchItem" "t1"

-- Firebird.3 Firebird3
SELECT
	"i"."Id",
	"i"."Value",
	"i"."GroupId",
	"i"."Name"
FROM
	(
		SELECT
			1 as "c1"
		FROM rdb$database
	) "t1"
		LEFT JOIN "BatchItem" "i" ON "i"."Id" < 3

