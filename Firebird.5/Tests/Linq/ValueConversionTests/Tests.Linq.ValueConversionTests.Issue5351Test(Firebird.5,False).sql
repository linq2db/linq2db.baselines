-- Firebird.5 Firebird4
DECLARE @Test Char -- String
SET     @Test = NULL

UPDATE
	"Issue5351Table" "x"
SET
	"Test" = CAST(@Test AS Char(1))
WHERE
	"x"."Id" = 1

-- Firebird.5 Firebird4

SELECT
	"x"."Id",
	"x"."Test"
FROM
	"Issue5351Table" "x"
WHERE
	"x"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @Test Char(1) -- String
SET     @Test = 'X'

UPDATE
	"Issue5351Table" "x"
SET
	"Test" = CAST(@Test AS Char(1))
WHERE
	"x"."Id" = 2

-- Firebird.5 Firebird4

SELECT
	"x"."Id",
	"x"."Test"
FROM
	"Issue5351Table" "x"
WHERE
	"x"."Id" = 2
FETCH NEXT 2 ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @Test Char(1) -- String
SET     @Test = 'X'

SELECT
	"x"."Id",
	"x"."Test"
FROM
	"Issue5351Table" "x"
WHERE
	"x"."Test" = @Test

