-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

CREATE TEMPORARY TABLE "T_84397443a1b3"
(
	"Id"   Int  NOT NULL,
	"Data" text     NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

INSERT INTO "T_84397443a1b3"
(
	"Id",
	"Data"
)
VALUES
(20,'Data 20'),
(21,'Data 21'),
(22,'Data 22')

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		INNER JOIN "T_84397443a1b3" r ON p."PersonID" = r."Id"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

DROP TABLE IF EXISTS "T_84397443a1b3"

