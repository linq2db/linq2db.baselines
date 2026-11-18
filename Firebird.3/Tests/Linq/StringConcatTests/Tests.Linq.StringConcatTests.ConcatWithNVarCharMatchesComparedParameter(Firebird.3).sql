-- Firebird.3 Firebird3
DECLARE @key VarChar(13) -- String
SET     @key = _utf8 x'412D313030412D313030D096D183D0BA'

SELECT
	"p"."Id"
FROM
	"ConcatProduct" "p"
WHERE
	"p"."Sku" || "p"."Title" = @key

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."Sku",
	"t1"."Title"
FROM
	"ConcatProduct" "t1"

