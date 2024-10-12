BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "$test"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "$test"
(
	"FirstName"  text     NOT NULL,
	"PersonID"   SERIAL   NOT NULL,
	"LastName"   text     NOT NULL,
	"MiddleName" text         NULL,
	"Gender"     Char(1)  NOT NULL,

	CONSTRAINT "PK_$test" PRIMARY KEY ("PersonID")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"$test" t1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "$test"

