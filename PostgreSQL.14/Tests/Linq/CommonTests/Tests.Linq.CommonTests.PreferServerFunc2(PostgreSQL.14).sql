BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Length Integer -- Int32
SET     @Length = 0

SELECT
	Length(p."FirstName") + :Length
FROM
	"Person" p

