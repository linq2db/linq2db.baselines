BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

ALTER SEQUENCE "Person_PersonID_seq" RESTART WITH 5

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @FirstName Text(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName Text(7) -- String
SET     @LastName = 'Shepard'
DECLARE @MiddleName Text -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	:FirstName,
	:LastName,
	:MiddleName,
	:Gender
)
RETURNING 
	"PersonID"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 5
DECLARE @diagnosis Integer -- Int32
SET     @diagnosis = 3

INSERT INTO "Patient" AS t1
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:id,
	Cast(:diagnosis as text)
)
ON CONFLICT ("PersonID") DO UPDATE SET
	"Diagnosis" = Cast(Length(t1."Diagnosis") as text)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 5
DECLARE @i Integer -- Int32
SET     @i = 4
DECLARE @i_1 Integer -- Int32
SET     @i_1 = 1

INSERT INTO "Patient" AS t1
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:id,
	Cast(:i as text)
)
ON CONFLICT ("PersonID") DO UPDATE SET
	"Diagnosis" = Cast((Length(t1."Diagnosis") + :i_1) as text)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 5
DECLARE @i Integer -- Int32
SET     @i = 5
DECLARE @i_1 Integer -- Int32
SET     @i_1 = 2

INSERT INTO "Patient" AS t1
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:id,
	Cast(:i as text)
)
ON CONFLICT ("PersonID") DO UPDATE SET
	"Diagnosis" = Cast((Length(t1."Diagnosis") + :i_1) as text)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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

