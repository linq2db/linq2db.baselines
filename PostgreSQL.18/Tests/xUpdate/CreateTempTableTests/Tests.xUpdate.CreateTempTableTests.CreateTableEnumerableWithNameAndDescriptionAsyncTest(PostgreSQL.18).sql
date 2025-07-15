BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "TempTable"

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

CREATE TEMPORARY TABLE IF NOT EXISTS "TempTable"
(
	"Name" text NOT NULL
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

INSERT INTO "TempTable"
(
	"Name"
)
VALUES
('John')

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	t."Name"
FROM
	"Person" p
		INNER JOIN "TempTable" t ON p."FirstName" = t."Name"

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "TempTable"

