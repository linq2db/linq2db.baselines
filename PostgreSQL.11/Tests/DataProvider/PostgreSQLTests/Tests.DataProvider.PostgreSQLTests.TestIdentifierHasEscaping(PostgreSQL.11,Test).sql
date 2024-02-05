BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Test"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Test"
(
	"FirstName"  text     NOT NULL,
	"PersonID"   SERIAL   NOT NULL,
	"LastName"   text     NOT NULL,
	"MiddleName" text         NULL,
	"Gender"     Char(1)  NOT NULL,

	CONSTRAINT "PK_Test" PRIMARY KEY ("PersonID")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Test" t1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Test"

