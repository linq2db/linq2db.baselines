-- Firebird.2.5 Firebird
DECLARE @Test Char -- String
SET     @Test = NULL

UPDATE
	"Issue5351Table" "x"
SET
	"Test" = CAST(@Test AS Char(1))
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
DECLARE @Test Char(1) -- String
SET     @Test = 'X'

UPDATE
	"Issue5351Table" "x"
SET
	"Test" = CAST(@Test AS Char(1))
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
DECLARE @Test Char(1) -- String
SET     @Test = 'X'

SELECT
	"x"."Id",
	"x"."Test"
FROM
	"Issue5351Table" "x"
WHERE
	"x"."Test" = @Test

