-- Firebird.3 Firebird3
SELECT
	"i"."Id",
	"i"."Value",
	"i"."GroupId",
	"i"."Name"
FROM
	"BatchItem" "i"
WHERE
	"i"."Id" > 100
ORDER BY
	"i"."Id"
FETCH NEXT 1 ROWS ONLY

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
	(
		SELECT
			"i"."Id"
		FROM
			"BatchItem" "i"
		WHERE
			"i"."Id" > 100
		ORDER BY
			"i"."Id"
		FETCH NEXT 1 ROWS ONLY
	)
FROM rdb$database

