BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @Length Integer -- Int32
SET     @Length = 0

SELECT
	Length(p."FirstName") + :Length
FROM
	"Person" p

