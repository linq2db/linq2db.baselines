-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" IN (-1, -2)
LIMIT 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" IN (-1, NULL)
LIMIT 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" IN (-1, 2)
LIMIT 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" NOT IN (NULL, 2)
LIMIT 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" NOT IN (-1, 2)
LIMIT 1

