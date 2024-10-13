BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "ComplexPerson"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "ComplexPerson"
(
	"Id"        Int  NOT NULL,
	"FirstName" text     NULL,
	"LastName"  text     NULL,

	CONSTRAINT "PK_ComplexPerson" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	x."Id",
	x."FirstName",
	x."LastName"
FROM
	"ComplexPerson" x
WHERE
	x."Id" < 10
UNION
SELECT
	x_1."Id",
	x_1."FirstName",
	x_1."LastName"
FROM
	"ComplexPerson" x_1
WHERE
	x_1."Id" < 20

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "ComplexPerson"

