-- Firebird.4 Firebird4
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

