-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TempTable"

-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TempTable"
(
	"Name" text NOT NULL
)

-- PostgreSQL.15 PostgreSQL

INSERT INTO "TempTable"
(
	"Name"
)
VALUES
('John')

-- PostgreSQL.15 PostgreSQL

SELECT
	t."Name"
FROM
	"Person" p
		INNER JOIN "TempTable" t ON p."FirstName" = t."Name"

-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TempTable"

