-- PostgreSQL.18 PostgreSQL

CREATE TEMPORARY TABLE "T_f11ab09642b7"
(
	"Id"   Int  NOT NULL,
	"Data" text     NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.18 PostgreSQL

INSERT INTO "T_f11ab09642b7"
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
		INNER JOIN "T_f11ab09642b7" r ON p."PersonID" = r."Id"

-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "T_f11ab09642b7"

