-- Firebird.4 Firebird4
DECLARE @suffix VarChar(3) -- String
SET     @suffix = _utf8 x'D096D183D0BA'

SELECT
	"p"."Id"
FROM
	"ConcatProduct" "p"
WHERE
	"p"."Title" = ("p"."Sku" || Coalesce(CAST(@suffix AS VARCHAR(6)), ''))

-- Firebird.4 Firebird4
SELECT
	"t1"."Id",
	"t1"."Sku",
	"t1"."Title"
FROM
	"ConcatProduct" "t1"

