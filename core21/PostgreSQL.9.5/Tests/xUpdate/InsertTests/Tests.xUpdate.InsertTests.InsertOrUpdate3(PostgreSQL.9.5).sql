BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

ALTER SEQUENCE "Person_PersonID_seq" RESTART WITH 5

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 5
DECLARE @i Integer -- Int32
SET     @i = 0

INSERT INTO "Patient" AS t1
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:id,
	'abc'
)
ON CONFLICT ("PersonID") DO UPDATE SET
	"Diagnosis" = Cast((Length(t1."Diagnosis") + :i) as VarChar(11))

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 5
DECLARE @i Integer -- Int32
SET     @i = 1

INSERT INTO "Patient" AS t1
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:id,
	'abc'
)
ON CONFLICT ("PersonID") DO UPDATE SET
	"Diagnosis" = Cast((Length(t1."Diagnosis") + :i) as VarChar(11))

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 5
DECLARE @i Integer -- Int32
SET     @i = 2

INSERT INTO "Patient" AS t1
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:id,
	'abc'
)
ON CONFLICT ("PersonID") DO UPDATE SET
	"Diagnosis" = Cast((Length(t1."Diagnosis") + :i) as VarChar(11))

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 5

DELETE FROM
	"Patient" t1
WHERE
	t1."PersonID" = :id

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 5

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" = :id

