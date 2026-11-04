-- Firebird.3 Firebird3
DECLARE @suffix VarChar(3) -- String
SET     @suffix = _utf8 x'D096D183D0BA'

SELECT
	"p"."Id"
FROM
	"ConcatProduct" "p"
WHERE
	("p"."Sku" || Coalesce(CAST(@suffix AS VARCHAR(6)), '')) IN (_utf8 x'412D313030D096D183D0BA', _utf8 x'422D323030D0A9D0B8D182')

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."Sku",
	"t1"."Title"
FROM
	"ConcatProduct" "t1"

-- Firebird.3 Firebird3
DECLARE @suffix VarChar(3) -- String
SET     @suffix = _utf8 x'D096D183D0BA'

SELECT
	"p"."Id"
FROM
	"ConcatProduct" "p"
WHERE
	("p"."Sku" || Coalesce(CAST(@suffix AS VARCHAR(6)), '')) IN ("p"."Title", _utf8 x'422D323030D096D183D0BA')

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."Sku",
	"t1"."Title"
FROM
	"ConcatProduct" "t1"

