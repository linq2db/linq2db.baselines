BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "1test"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "1test"
(
	"FirstName"  text     NOT NULL,
	"PersonID"   SERIAL   NOT NULL,
	"LastName"   text     NOT NULL,
	"MiddleName" text         NULL,
	"Gender"     Char(1)  NOT NULL,

	CONSTRAINT "PK_1test" PRIMARY KEY ("PersonID")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"1test" t1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "1test"

