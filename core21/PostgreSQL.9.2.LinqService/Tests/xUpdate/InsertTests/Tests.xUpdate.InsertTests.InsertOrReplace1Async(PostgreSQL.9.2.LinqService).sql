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
-- PostgreSQL.9.2 PostgreSQL (asynchronously)
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'abc0'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 5

UPDATE
	"Patient"
SET
	"Diagnosis" = :Diagnosis
WHERE
	"Patient"."PersonID" = :PersonID

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL (asynchronously)
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'abc0'

INSERT INTO "Patient"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:PersonID,
	:Diagnosis
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL (asynchronously)
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'abc1'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 5

UPDATE
	"Patient"
SET
	"Diagnosis" = :Diagnosis
WHERE
	"Patient"."PersonID" = :PersonID

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL (asynchronously)
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'abc2'
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 5

UPDATE
	"Patient"
SET
	"Diagnosis" = :Diagnosis
WHERE
	"Patient"."PersonID" = :PersonID

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL (asynchronously)
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
-- PostgreSQL.9.2 PostgreSQL (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 5

DELETE FROM
	"Patient" p
WHERE
	p."PersonID" = :id

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 5

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" = :id

