﻿BeforeExecute
-- Firebird.3 Firebird3
DECLARE @value Integer -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" IS DISTINCT FROM @value

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @value Integer -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableInt" IS DISTINCT FROM @value

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @value Integer -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" IS NOT DISTINCT FROM @value

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @value Integer -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableInt" IS NOT DISTINCT FROM @value

