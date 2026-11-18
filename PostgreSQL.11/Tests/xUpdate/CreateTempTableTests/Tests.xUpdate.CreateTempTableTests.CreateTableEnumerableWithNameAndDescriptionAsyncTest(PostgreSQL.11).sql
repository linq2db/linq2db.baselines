-- PostgreSQL.11 PostgreSQL
DROP TABLE IF EXISTS "TempTable"

-- PostgreSQL.11 PostgreSQL
CREATE TEMPORARY TABLE IF NOT EXISTS "TempTable"
(
	"Name" text NOT NULL,

	CONSTRAINT "PK_TempTable" PRIMARY KEY ("Name")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.11 PostgreSQL
INSERT INTO "TempTable"
(
	"Name"
)
VALUES
('John')

-- PostgreSQL.11 PostgreSQL
SELECT
	t."Name"
FROM
	"Person" p
		INNER JOIN "TempTable" t ON p."FirstName" = t."Name"

-- PostgreSQL.11 PostgreSQL
DROP TABLE IF EXISTS "TempTable"

