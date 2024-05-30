BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "TempTable"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

CREATE TABLE IF NOT EXISTS "TempTable"
(
	"Name" text NOT NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

INSERT INTO "TempTable"
(
	"Name"
)
VALUES
('John')

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	t."Name"
FROM
	"Person" p
		INNER JOIN "TempTable" t ON p."FirstName" = t."Name"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "TempTable"

