-- Firebird.2.5 Firebird
SELECT FIRST 1
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
	(
		SELECT FIRST 1
			"i"."Id"
		FROM
			"BatchItem" "i"
		WHERE
			"i"."Id" > 100
		ORDER BY
			"i"."Id"
	)
FROM rdb$database

