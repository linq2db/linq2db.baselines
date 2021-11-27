﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

ALTER SEQUENCE "Person_PersonID_seq" RESTART WITH 5

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DELETE FROM
	"Person" p
WHERE
	p."FirstName" = 'John' AND p."LastName" = 'Shepard'

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL (asynchronously)

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'John',
	'Shepard',
	'M'
)
RETURNING 
	"PersonID"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL (asynchronously)
DECLARE @i Integer -- Int32
SET     @i = 0
DECLARE @id2 Integer -- Int32
SET     @id2 = 5

UPDATE
	"Patient"
SET
	"Diagnosis" = Cast((Length("Patient"."Diagnosis") + :i) as VarChar(11))
WHERE
	"Patient"."PersonID" = :id2

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 5

INSERT INTO "Patient"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:id,
	'abc'
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL (asynchronously)
DECLARE @i Integer -- Int32
SET     @i = 1
DECLARE @id2 Integer -- Int32
SET     @id2 = 5

UPDATE
	"Patient"
SET
	"Diagnosis" = Cast((Length("Patient"."Diagnosis") + :i) as VarChar(11))
WHERE
	"Patient"."PersonID" = :id2

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL (asynchronously)
DECLARE @i Integer -- Int32
SET     @i = 2
DECLARE @id2 Integer -- Int32
SET     @id2 = 5

UPDATE
	"Patient"
SET
	"Diagnosis" = Cast((Length("Patient"."Diagnosis") + :i) as VarChar(11))
WHERE
	"Patient"."PersonID" = :id2

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 5
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	p."PersonID",
	p."Diagnosis"
FROM
	"Patient" p
WHERE
	p."PersonID" = :id
LIMIT :take

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 5

DELETE FROM
	"Patient" t1
WHERE
	t1."PersonID" = :id

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 5

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" = :id

