BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

ALTER SEQUENCE "Person_PersonID_seq" RESTART WITH 5

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
	'John',
	'Shepard',
	'M'
)
RETURNING 
	"PersonID"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @i Integer -- Int32
SET     @i = 0
DECLARE @id Integer -- Int32
SET     @id = 5

UPDATE
	"Patient"
SET
	"Diagnosis" = Cast((Length("Patient"."Diagnosis") + :i) as VarChar(11))
WHERE
	"Patient"."PersonID" = :id

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
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
-- PostgreSQL.9.2 PostgreSQL
DECLARE @i Integer -- Int32
SET     @i = 1
DECLARE @id Integer -- Int32
SET     @id = 5

UPDATE
	"Patient"
SET
	"Diagnosis" = Cast((Length("Patient"."Diagnosis") + :i) as VarChar(11))
WHERE
	"Patient"."PersonID" = :id

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @i Integer -- Int32
SET     @i = 2
DECLARE @id Integer -- Int32
SET     @id = 5

UPDATE
	"Patient"
SET
	"Diagnosis" = Cast((Length("Patient"."Diagnosis") + :i) as VarChar(11))
WHERE
	"Patient"."PersonID" = :id

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 5

DELETE FROM
	"Patient" t1
WHERE
	t1."PersonID" = :id

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 5

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" = :id

