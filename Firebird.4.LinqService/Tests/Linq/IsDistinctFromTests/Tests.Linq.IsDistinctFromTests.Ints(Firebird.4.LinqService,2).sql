BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @value Integer -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" IS DISTINCT FROM @value

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @value Integer -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableInt" IS DISTINCT FROM @value

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @value Integer -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" IS NOT DISTINCT FROM @value

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @value Integer -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableInt" IS NOT DISTINCT FROM @value

