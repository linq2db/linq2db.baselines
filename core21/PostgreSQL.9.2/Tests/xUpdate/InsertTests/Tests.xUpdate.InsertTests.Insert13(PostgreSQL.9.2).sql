BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	Max(t."PersonID")
FROM
	"Person" t

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

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
-- PostgreSQL.9.2 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 4

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > :id

