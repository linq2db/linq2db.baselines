﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DELETE FROM
	"Person" t1
WHERE
	t1."FirstName" ILIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @name Text(8) -- String
SET     @name = 'Insert16'
DECLARE @idx Integer -- Int32
SET     @idx = 4

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'Insert16',
	Cast((Length(:name) + :idx) as VarChar(11)),
	'M'
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Count(*)
FROM
	"Person" t1
WHERE
	t1."FirstName" ILIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DELETE FROM
	"Person" t1
WHERE
	t1."FirstName" ILIKE 'Insert16%' ESCAPE '~'

