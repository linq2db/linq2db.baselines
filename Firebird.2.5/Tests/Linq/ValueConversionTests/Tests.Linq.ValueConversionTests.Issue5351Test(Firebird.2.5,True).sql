-- Firebird.2.5 Firebird

UPDATE
	"Issue5351Table" "x"
SET
	"Test" = NULL
WHERE
	"x"."Id" = 1

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"x"."Id",
	"x"."Test"
FROM
	"Issue5351Table" "x"
WHERE
	"x"."Id" = 1

-- Firebird.2.5 Firebird

UPDATE
	"Issue5351Table" "x"
SET
	"Test" = 'X'
WHERE
	"x"."Id" = 2

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"x"."Id",
	"x"."Test"
FROM
	"Issue5351Table" "x"
WHERE
	"x"."Id" = 2

-- Firebird.2.5 Firebird

SELECT
	"x"."Id",
	"x"."Test"
FROM
	"Issue5351Table" "x"
WHERE
	"x"."Test" = 'X'

