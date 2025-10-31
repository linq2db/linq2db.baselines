-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	NULLIF(s."Int", 2)
FROM
	"Src" s
ORDER BY
	s."Int"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."Int" = 2

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."Int" <> 2

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	NULLIF(s."Int", 4)
FROM
	"Src" s
ORDER BY
	s."Int"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."Int" = 4

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."Int" <> 4

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	s."Int"
FROM
	"Src" s
ORDER BY
	s."Int"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	1 = 0

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" x

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	NULLIF(s."NullableInt", 2)
FROM
	"Src" s
ORDER BY
	s."Int"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."NullableInt" = 2 OR x."NullableInt" IS NULL

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	NOT (x."NullableInt" = 2 OR x."NullableInt" IS NULL)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	NULLIF(s."NullableInt", 4)
FROM
	"Src" s
ORDER BY
	s."Int"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."NullableInt" = 4 OR x."NullableInt" IS NULL

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	NOT (x."NullableInt" = 4 OR x."NullableInt" IS NULL)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	s."NullableInt"
FROM
	"Src" s
ORDER BY
	s."Int"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."NullableInt" IS NULL

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" x
WHERE
	x."NullableInt" IS NOT NULL

