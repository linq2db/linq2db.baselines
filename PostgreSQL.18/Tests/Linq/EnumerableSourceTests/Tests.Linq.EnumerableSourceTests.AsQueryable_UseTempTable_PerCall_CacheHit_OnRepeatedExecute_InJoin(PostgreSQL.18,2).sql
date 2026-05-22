-- PostgreSQL.18 PostgreSQL

CREATE TEMPORARY TABLE "T_e82eb964b541"
(
	"Id"   Int  NOT NULL,
	"Data" text     NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.18 PostgreSQL

INSERT INTO "T_e82eb964b541"
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
		INNER JOIN "T_e82eb964b541" r ON p."PersonID" = r."Id"

-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "T_e82eb964b541"

