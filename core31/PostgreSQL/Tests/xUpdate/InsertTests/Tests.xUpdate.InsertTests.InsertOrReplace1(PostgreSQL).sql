BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

ALTER SEQUENCE "Person_PersonID_seq" RESTART WITH 5

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'abc0'

INSERT INTO "Patient" AS t1
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:PersonID,
	:Diagnosis
)
ON CONFLICT ("PersonID") DO UPDATE SET
	"Diagnosis" = :Diagnosis

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'abc1'

INSERT INTO "Patient" AS t1
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:PersonID,
	:Diagnosis
)
ON CONFLICT ("PersonID") DO UPDATE SET
	"Diagnosis" = :Diagnosis

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis Text(4) -- String
SET     @Diagnosis = 'abc2'

INSERT INTO "Patient" AS t1
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:PersonID,
	:Diagnosis
)
ON CONFLICT ("PersonID") DO UPDATE SET
	"Diagnosis" = :Diagnosis

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 5

DELETE FROM
	"Patient" t1
WHERE
	t1."PersonID" = :id

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 5

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" = :id

