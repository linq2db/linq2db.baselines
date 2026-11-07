-- Firebird.4 Firebird4
DECLARE @suffix VarChar(3) -- String
SET     @suffix = _utf8 x'D096D183D0BA'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"ConcatProduct" "p"
		WHERE
			_utf8 x'412D313030D096D183D0BA' = "p"."Sku" || Coalesce(CAST(@suffix AS VARCHAR(6)), '')
	)
FROM rdb$database

-- Firebird.4 Firebird4
DECLARE @suffix VarChar(3) -- String
SET     @suffix = _utf8 x'D096D183D0BA'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"ConcatProduct" "p"
		WHERE
			_utf8 x'412D313030D0A9D0B8D182' = "p"."Sku" || Coalesce(CAST(@suffix AS VARCHAR(6)), '')
	)
FROM rdb$database

