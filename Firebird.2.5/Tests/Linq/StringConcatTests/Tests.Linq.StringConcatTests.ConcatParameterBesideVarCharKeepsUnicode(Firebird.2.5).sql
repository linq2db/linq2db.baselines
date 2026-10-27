-- Firebird.2.5 Firebird
DECLARE @suffix VarChar(3) -- String
SET     @suffix = _utf8 x'D096D183D0BA'

SELECT
	"p"."Id",
	"p"."Sku" || Coalesce(CAST(@suffix AS VARCHAR(6)), ''),
	Coalesce(CAST(@suffix AS VARCHAR(6)), '') || "p"."Sku" || Coalesce(CAST(@suffix AS VARCHAR(6)), ''),
	"p"."Sku" || Coalesce(CAST(@suffix AS VARCHAR(6)), '')
FROM
	"ConcatProduct" "p"

-- Firebird.2.5 Firebird
SELECT
	"t1"."Id",
	"t1"."Sku",
	"t1"."Title"
FROM
	"ConcatProduct" "t1"

