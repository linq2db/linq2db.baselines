BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'John',
	'Limonadovy',
	'M'
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

UPDATE
	"Person"
SET
	"FirstName" = 'Johnny'
WHERE
	"Person"."LastName" = 'Limonadovy'

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DELETE FROM
	"Person" t1
WHERE
	t1."LastName" = 'Limonadovy'

