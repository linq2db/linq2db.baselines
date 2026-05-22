-- PostgreSQL.18 PostgreSQL

CREATE TEMPORARY TABLE "T_4ad03aa9f35a"
(
	"Id"   Int  NOT NULL,
	"Data" text     NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.18 PostgreSQL

INSERT INTO "T_4ad03aa9f35a"
(
	"Id",
	"Data"
)
VALUES
(20,'Data 20'),
(21,'Data 21'),
(22,'Data 22')

-- PostgreSQL.18 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		INNER JOIN "T_4ad03aa9f35a" r ON p."PersonID" = r."Id"

-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "T_4ad03aa9f35a"

