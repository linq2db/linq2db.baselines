BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @idCopy Integer -- Int32
SET     @idCopy = 0

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" > :idCopy

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @idCopy Integer -- Int32
SET     @idCopy = 2

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" > :idCopy

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @idCopy Integer -- Int32
SET     @idCopy = 2

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" > :idCopy

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @idCopy Integer -- Int32
SET     @idCopy = 8

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" > :idCopy

