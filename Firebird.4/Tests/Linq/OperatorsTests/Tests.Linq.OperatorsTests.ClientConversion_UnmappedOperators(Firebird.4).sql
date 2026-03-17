-- Firebird.4 Firebird4

SELECT
	"i"."Id"
FROM
	"Tender" "i"

-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	"Tender" "t1"

-- Firebird.4 Firebird4

SELECT
	"r"."Id"
FROM
	"Tender" "r"
WHERE
	"r"."Id" = X'00000000000000000000000000000000'
FETCH NEXT 1 ROWS ONLY

-- Firebird.4 Firebird4

SELECT
	"i"."Id"
FROM
	"Tender" "i"
FETCH NEXT 1 ROWS ONLY

