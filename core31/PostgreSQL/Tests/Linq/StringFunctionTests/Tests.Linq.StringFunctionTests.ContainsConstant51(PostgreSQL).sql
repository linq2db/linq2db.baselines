BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @ps_1 Text(4) -- String
SET     @ps_1 = '%~[%'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND '123[456' ILIKE :ps_1 ESCAPE '~'

