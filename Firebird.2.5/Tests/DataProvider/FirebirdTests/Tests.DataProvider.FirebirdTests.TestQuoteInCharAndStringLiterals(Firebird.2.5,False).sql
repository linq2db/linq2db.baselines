-- Firebird.2.5 Firebird
SELECT
	"r"."Id"
FROM
	"QuoteLiteralTable" "r"
WHERE
	"r"."Ch" = ''''

-- Firebird.2.5 Firebird
DECLARE @ch Char -- String
SET     @ch = ''''

SELECT
	"r"."Id"
FROM
	"QuoteLiteralTable" "r"
WHERE
	"r"."Ch" = @ch

-- Firebird.2.5 Firebird
DECLARE @str VarChar(1) -- String
SET     @str = ''''

SELECT
	"r"."Id"
FROM
	"QuoteLiteralTable" "r"
WHERE
	"r"."Str" = @str

