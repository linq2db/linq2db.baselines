-- Firebird.4 Firebird4
SELECT
	"r"."Id"
FROM
	"QuoteLiteralTable" "r"
WHERE
	"r"."Ch" = ''''

-- Firebird.4 Firebird4
DECLARE @ch Char -- String
SET     @ch = ''''

SELECT
	"r"."Id"
FROM
	"QuoteLiteralTable" "r"
WHERE
	"r"."Ch" = @ch

-- Firebird.4 Firebird4
DECLARE @str VarChar(1) -- String
SET     @str = ''''

SELECT
	"r"."Id"
FROM
	"QuoteLiteralTable" "r"
WHERE
	"r"."Str" = @str

