BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Person" t1
WHERE
	t1."FirstName" LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @idx Integer -- Int32
SET     @idx = 12

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'Insert16',
	Cast(:idx as VarChar(11)),
	'M'
)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Person" t1
WHERE
	t1."FirstName" LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Person" t1
WHERE
	t1."FirstName" LIKE 'Insert16%' ESCAPE '~'

