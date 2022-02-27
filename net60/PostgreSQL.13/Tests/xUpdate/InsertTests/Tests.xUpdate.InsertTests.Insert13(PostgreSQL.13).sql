BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Max(t."PersonID")
FROM
	"Person" t

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'FirstName',
	'LastName',
	'M'
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 4

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > :id

