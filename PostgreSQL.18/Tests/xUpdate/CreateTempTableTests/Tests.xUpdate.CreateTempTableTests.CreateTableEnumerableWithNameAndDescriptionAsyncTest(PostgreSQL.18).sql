-- PostgreSQL.18 PostgreSQL13

DROP TABLE IF EXISTS "TempTable"

-- PostgreSQL.18 PostgreSQL13

CREATE TEMPORARY TABLE IF NOT EXISTS "TempTable"
(
	"Name" text NOT NULL,

	CONSTRAINT "PK_TempTable" PRIMARY KEY ("Name")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.18 PostgreSQL13

INSERT INTO "TempTable"
(
	"Name"
)
VALUES
('John')

-- PostgreSQL.18 PostgreSQL13

SELECT
	t."Name"
FROM
	"Person" p
		INNER JOIN "TempTable" t ON p."FirstName" = t."Name"

-- PostgreSQL.18 PostgreSQL13

DROP TABLE IF EXISTS "TempTable"

