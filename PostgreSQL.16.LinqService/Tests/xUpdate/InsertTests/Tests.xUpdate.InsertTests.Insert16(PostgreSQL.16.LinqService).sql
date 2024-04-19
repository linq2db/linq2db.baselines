BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DELETE FROM
	"Person" t1
WHERE
	t1."FirstName" LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'Insert16',
	12::text,
	'M'
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Count(*)
FROM
	"Person" t1
WHERE
	t1."FirstName" LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DELETE FROM
	"Person" t1
WHERE
	t1."FirstName" LIKE 'Insert16%' ESCAPE '~'

