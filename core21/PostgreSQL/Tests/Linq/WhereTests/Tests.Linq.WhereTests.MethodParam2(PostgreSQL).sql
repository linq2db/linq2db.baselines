BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @ID_1 Integer -- Int32
SET     @ID_1 = 1

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."PersonID" = :ID_1

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @ID_1 Integer -- Int32
SET     @ID_1 = 2

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."PersonID" = :ID_1

