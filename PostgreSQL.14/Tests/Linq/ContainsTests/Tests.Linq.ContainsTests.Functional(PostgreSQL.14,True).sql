-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" IN (-1, -2)
LIMIT 1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."Int" IN (-1) OR s."Int" IS NULL)
LIMIT 1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" IN (-1, 2)
LIMIT 1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."Int" NOT IN (2) AND s."Int" IS NOT NULL)
LIMIT 1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."Int" NOT IN (-1, 2) OR s."Int" IS NULL)
LIMIT 1

