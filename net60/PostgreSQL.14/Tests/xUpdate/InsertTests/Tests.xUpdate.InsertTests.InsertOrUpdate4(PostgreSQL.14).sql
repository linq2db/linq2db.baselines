BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

ALTER SEQUENCE "Person_PersonID_seq" RESTART WITH 5

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 5
DECLARE @diagnosis Text(3) -- String
SET     @diagnosis = 'abc'
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
	Cast((Length(:diagnosis) + :i) as text)
)
ON CONFLICT ("PersonID") DO UPDATE SET
	"Diagnosis" = Cast((Length(t1."Diagnosis") + :i) as text)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 5
DECLARE @diagnosis Text(3) -- String
SET     @diagnosis = 'abc'
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
	Cast((Length(:diagnosis) + :i) as text)
)
ON CONFLICT ("PersonID") DO UPDATE SET
	"Diagnosis" = Cast((Length(t1."Diagnosis") + :i) as text)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 5
DECLARE @diagnosis Text(3) -- String
SET     @diagnosis = 'abc'
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
	Cast((Length(:diagnosis) + :i) as text)
)
ON CONFLICT ("PersonID") DO UPDATE SET
	"Diagnosis" = Cast((Length(t1."Diagnosis") + :i) as text)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 5

DELETE FROM
	"Patient" t1
WHERE
	t1."PersonID" = :id

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 5

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" = :id

