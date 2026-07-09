-- PostgreSQL.19 PostgreSQL12

DROP TABLE IF EXISTS "TempTable"

-- PostgreSQL.19 PostgreSQL12

CREATE TABLE IF NOT EXISTS "TempTable"
(
	"Name" text NOT NULL,

	CONSTRAINT "PK_TempTable" PRIMARY KEY ("Name")
)

-- PostgreSQL.19 PostgreSQL12

INSERT INTO "TempTable"
(
	"Name"
)
VALUES
('John')

-- PostgreSQL.19 PostgreSQL12

SELECT
	t."Name"
FROM
	"Person" p
		INNER JOIN "TempTable" t ON p."FirstName" = t."Name"

-- PostgreSQL.19 PostgreSQL12

DROP TABLE IF EXISTS "TempTable"

