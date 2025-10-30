BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	NULLIF(s."Int", 2)
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Int" = 2

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Int" <> 2

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	NULLIF(s."Int", 4)
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Int" = 4

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Int" <> 4

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	s."Int"
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	1 = 0

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" s

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	NULLIF(s."NullableInt", 2)
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableInt" = 2 OR s."NullableInt" IS NULL

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	NOT (s."NullableInt" = 2 OR s."NullableInt" IS NULL)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	NULLIF(s."NullableInt", 4)
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableInt" = 4 OR s."NullableInt" IS NULL

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	NOT (s."NullableInt" = 4 OR s."NullableInt" IS NULL)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	s."NullableInt"
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableInt" IS NULL

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableInt" IS NOT NULL

