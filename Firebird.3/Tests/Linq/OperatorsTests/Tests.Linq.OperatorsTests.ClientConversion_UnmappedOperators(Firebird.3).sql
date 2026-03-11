-- Firebird.3 Firebird3

SELECT
	"i"."Id"
FROM
	"Tender" "i"

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	"Tender" "t1"

-- Firebird.3 Firebird3

SELECT
	"r"."Id"
FROM
	"Tender" "r"
WHERE
	"r"."Id" = X'00000000000000000000000000000000'
FETCH NEXT 1 ROWS ONLY

-- Firebird.3 Firebird3

SELECT
	"i"."Id"
FROM
	"Tender" "i"
FETCH NEXT 1 ROWS ONLY

