BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	t1."FirstName"
FROM
	"Person" t1
GROUP BY
	t1."FirstName"

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @FirstName Text(4) -- String
SET     @FirstName = 'Jane'

SELECT
	"keyParam"."FirstName",
	"keyParam"."PersonID",
	"keyParam"."LastName",
	"keyParam"."MiddleName",
	"keyParam"."Gender"
FROM
	"Person" "keyParam"
WHERE
	"keyParam"."FirstName" = :FirstName

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @FirstName Text(6) -- String
SET     @FirstName = 'Jürgen'

SELECT
	"keyParam"."FirstName",
	"keyParam"."PersonID",
	"keyParam"."LastName",
	"keyParam"."MiddleName",
	"keyParam"."Gender"
FROM
	"Person" "keyParam"
WHERE
	"keyParam"."FirstName" = :FirstName

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @FirstName Text(6) -- String
SET     @FirstName = 'Tester'

SELECT
	"keyParam"."FirstName",
	"keyParam"."PersonID",
	"keyParam"."LastName",
	"keyParam"."MiddleName",
	"keyParam"."Gender"
FROM
	"Person" "keyParam"
WHERE
	"keyParam"."FirstName" = :FirstName

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @FirstName Text(4) -- String
SET     @FirstName = 'John'

SELECT
	"keyParam"."FirstName",
	"keyParam"."PersonID",
	"keyParam"."LastName",
	"keyParam"."MiddleName",
	"keyParam"."Gender"
FROM
	"Person" "keyParam"
WHERE
	"keyParam"."FirstName" = :FirstName

