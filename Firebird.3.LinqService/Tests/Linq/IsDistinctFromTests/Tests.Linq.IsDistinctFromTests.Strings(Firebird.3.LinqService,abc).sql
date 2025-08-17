BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @value VarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."String" IS DISTINCT FROM @value

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @value VarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableString" IS DISTINCT FROM @value

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @value VarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."String" IS NOT DISTINCT FROM @value

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @value VarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableString" IS NOT DISTINCT FROM @value

