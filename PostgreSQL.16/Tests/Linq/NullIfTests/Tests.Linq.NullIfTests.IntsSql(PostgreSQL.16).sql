BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	NULLIF(s."Int", 2)
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."Int" = 2

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."Int" <> 2

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	NULLIF(s."Int", 4)
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."Int" = 4

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."Int" <> 4

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	s."Int"
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	1 = 0

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" x

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	NULLIF(s."NullableInt", 2)
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."NullableInt" = 2 OR x."NullableInt" IS NULL

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	NOT (x."NullableInt" = 2 OR x."NullableInt" IS NULL)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	NULLIF(s."NullableInt", 4)
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."NullableInt" = 4 OR x."NullableInt" IS NULL

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	NOT (x."NullableInt" = 4 OR x."NullableInt" IS NULL)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	s."NullableInt"
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."NullableInt" IS NULL

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."NullableInt" IS NOT NULL

