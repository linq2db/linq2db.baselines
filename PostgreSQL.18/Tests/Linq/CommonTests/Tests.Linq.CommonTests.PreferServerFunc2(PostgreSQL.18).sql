BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @Length Integer -- Int32
SET     @Length = 0

SELECT
	Length(p."FirstName") + :Length
FROM
	"Person" p

