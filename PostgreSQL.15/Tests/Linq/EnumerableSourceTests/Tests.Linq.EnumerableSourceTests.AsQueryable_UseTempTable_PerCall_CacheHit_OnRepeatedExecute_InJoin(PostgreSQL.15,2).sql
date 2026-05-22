-- PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE "T_141acc1134bb"
(
	"Id"   Int  NOT NULL,
	"Data" text     NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.15 PostgreSQL

INSERT INTO "T_141acc1134bb"
(
	"Id",
	"Data"
)
VALUES
(20,'Data 20'),
(21,'Data 21'),
(22,'Data 22')

-- PostgreSQL.15 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		INNER JOIN "T_141acc1134bb" r ON p."PersonID" = r."Id"

-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "T_141acc1134bb"

