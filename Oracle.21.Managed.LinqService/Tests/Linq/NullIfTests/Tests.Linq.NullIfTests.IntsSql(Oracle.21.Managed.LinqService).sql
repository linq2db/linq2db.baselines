BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	NULLIF(s."Int", 2)
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."Int" = 2

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."Int" <> 2

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	NULLIF(s."Int", 4)
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."Int" = 4

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."Int" <> 4

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	s."Int"
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	1 = 0

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" x

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	NULLIF(s."NullableInt", 2)
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."NullableInt" = 2 OR x."NullableInt" IS NULL

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	NOT (x."NullableInt" = 2 OR x."NullableInt" IS NULL)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	NULLIF(s."NullableInt", 4)
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."NullableInt" = 4 OR x."NullableInt" IS NULL

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	NOT (x."NullableInt" = 4 OR x."NullableInt" IS NULL)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	s."NullableInt"
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."NullableInt" IS NULL

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."NullableInt" IS NOT NULL

