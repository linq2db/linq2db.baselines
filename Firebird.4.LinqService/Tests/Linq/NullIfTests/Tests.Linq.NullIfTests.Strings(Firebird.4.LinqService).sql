﻿BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	NULLIF("s"."String", 'abc')
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."String" = 'abc' OR "x"."String" IS NULL

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	NOT ("x"."String" = 'abc' OR "x"."String" IS NULL)

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	NULLIF("s"."String", 'xyz')
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."String" = 'xyz' OR "x"."String" IS NULL

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	NOT ("x"."String" = 'xyz' OR "x"."String" IS NULL)

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"s"."String"
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."String" IS NULL

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."String" IS NOT NULL

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	NULLIF("s"."NullableString", 'abc')
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."NullableString" = 'abc' OR "x"."NullableString" IS NULL

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	NOT ("x"."NullableString" = 'abc' OR "x"."NullableString" IS NULL)

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	NULLIF("s"."NullableString", 'xyz')
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."NullableString" = 'xyz' OR "x"."NullableString" IS NULL

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	NOT ("x"."NullableString" = 'xyz' OR "x"."NullableString" IS NULL)

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"s"."NullableString"
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."NullableString" IS NULL

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."NullableString" IS NOT NULL

