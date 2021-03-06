﻿BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = -1

UPDATE
	"Person"
SET
	"LastName" = 'test'
FROM
	"Person" t1
		LEFT JOIN "Patient" "a_Patient" ON t1."PersonID" = "a_Patient"."PersonID"
		LEFT JOIN "Person" "a_Person" ON "a_Patient"."PersonID" = "a_Person"."PersonID"
WHERE
	t1."PersonID" = :id AND "a_Person"."PersonID" = t1."PersonID"

