﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Person" t1
WHERE
	t1."FirstName" ILIKE 'Insert14%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'Insert14' || (
		SELECT
			p."FirstName"
		FROM
			"Person" p
		WHERE
			p."PersonID" = 1
		LIMIT :take
	),
	'Shepard',
	'M'
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" ILIKE 'Insert14%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Person" t1
WHERE
	t1."FirstName" ILIKE 'Insert14%' ESCAPE '~'

