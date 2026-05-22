-- PostgreSQL.13 PostgreSQL

CREATE TEMPORARY TABLE "T_ac397f6e47ff"
(
	"Id"   Int  NOT NULL,
	"Data" text     NULL
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.13 PostgreSQL

INSERT INTO "T_ac397f6e47ff"
(
	"Id",
	"Data"
)
VALUES
(20,'Data 20'),
(21,'Data 21'),
(22,'Data 22')

-- PostgreSQL.13 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		INNER JOIN "T_ac397f6e47ff" r ON p."PersonID" = r."Id"

-- PostgreSQL.13 PostgreSQL

DROP TABLE IF EXISTS "T_ac397f6e47ff"

