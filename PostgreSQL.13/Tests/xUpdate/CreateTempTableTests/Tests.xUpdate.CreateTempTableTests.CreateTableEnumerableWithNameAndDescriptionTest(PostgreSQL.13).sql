-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TempTable"

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "TempTable"
(
	"Name" text NOT NULL,

	CONSTRAINT "PK_TempTable" PRIMARY KEY ("Name")
)

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TempTable"
(
	"Name"
)
VALUES
('John')

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Name"
FROM
	"Person" p
		INNER JOIN "TempTable" t ON p."FirstName" = t."Name"

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TempTable"

