-- Firebird.4 Firebird4

UPDATE
	"Issue5351Table" "x"
SET
	"Test" = NULL
WHERE
	"x"."Id" = 1

-- Firebird.4 Firebird4

SELECT
	"x"."Id",
	"x"."Test"
FROM
	"Issue5351Table" "x"
WHERE
	"x"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Firebird.4 Firebird4

UPDATE
	"Issue5351Table" "x"
SET
	"Test" = 'X'
WHERE
	"x"."Id" = 2

-- Firebird.4 Firebird4

SELECT
	"x"."Id",
	"x"."Test"
FROM
	"Issue5351Table" "x"
WHERE
	"x"."Id" = 2
FETCH NEXT 2 ROWS ONLY

-- Firebird.4 Firebird4

SELECT
	"x"."Id",
	"x"."Test"
FROM
	"Issue5351Table" "x"
WHERE
	"x"."Test" = 'X'

