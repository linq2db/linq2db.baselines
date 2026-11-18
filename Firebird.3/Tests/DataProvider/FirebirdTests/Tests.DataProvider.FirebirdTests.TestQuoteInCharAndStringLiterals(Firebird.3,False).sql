-- Firebird.3 Firebird3
SELECT
	"r"."Id"
FROM
	"QuoteLiteralTable" "r"
WHERE
	"r"."Ch" = ''''

-- Firebird.3 Firebird3
DECLARE @ch Char -- String
SET     @ch = ''''

SELECT
	"r"."Id"
FROM
	"QuoteLiteralTable" "r"
WHERE
	"r"."Ch" = @ch

-- Firebird.3 Firebird3
DECLARE @str VarChar(1) -- String
SET     @str = ''''

SELECT
	"r"."Id"
FROM
	"QuoteLiteralTable" "r"
WHERE
	"r"."Str" = @str

