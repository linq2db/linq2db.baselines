-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

DROP TABLE IF EXISTS "TempTable"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

CREATE TABLE IF NOT EXISTS "TempTable"
(
	"Name" text NOT NULL,

	CONSTRAINT "PK_TempTable" PRIMARY KEY ("Name")
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

INSERT INTO "TempTable"
(
	"Name"
)
VALUES
('John')

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	t."Name"
FROM
	"Person" p
		INNER JOIN "TempTable" t ON p."FirstName" = t."Name"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

DROP TABLE IF EXISTS "TempTable"

