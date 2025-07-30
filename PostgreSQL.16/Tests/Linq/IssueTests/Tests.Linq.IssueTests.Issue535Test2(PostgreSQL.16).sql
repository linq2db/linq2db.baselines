BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @filter Text(6) -- String
SET     @filter = '%test%'
DECLARE @filter_1 Text(6) -- String
SET     @filter_1 = '%test%'

SELECT
	q."Id",
	q."Name",
	q."ContactEmail",
	Coalesce(q."Enabled", False)
FROM
	"CustomerBase" q
WHERE
	q."ClientType" = 'Client' AND (q."Name" LIKE :filter ESCAPE '~' OR q."ContactEmail" LIKE :filter_1 ESCAPE '~')

