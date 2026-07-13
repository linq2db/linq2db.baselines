-- PostgreSQL.9.2 PostgreSQL
DROP TABLE IF EXISTS "TempTable"

-- PostgreSQL.9.2 PostgreSQL
CREATE TABLE IF NOT EXISTS "TempTable"
(
	"Name" text NOT NULL,

	CONSTRAINT "PK_TempTable" PRIMARY KEY ("Name")
)

-- PostgreSQL.9.2 PostgreSQL
INSERT INTO "TempTable"
(
	"Name"
)
VALUES
('John')

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t."Name"
FROM
	"Person" p
		INNER JOIN "TempTable" t ON p."FirstName" = t."Name"

-- PostgreSQL.9.2 PostgreSQL
DROP TABLE IF EXISTS "TempTable"

