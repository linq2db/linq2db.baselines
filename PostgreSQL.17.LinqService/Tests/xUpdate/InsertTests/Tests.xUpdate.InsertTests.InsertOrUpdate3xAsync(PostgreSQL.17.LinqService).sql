BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
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
	"Diagnosis" = (Length(t1."Diagnosis") + :i)::text

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
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
	"Diagnosis" = (Length(t1."Diagnosis") + :i)::text

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
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
	"Diagnosis" = (Length(t1."Diagnosis") + :i)::text

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT
	p."PersonID",
	p."Diagnosis"
FROM
	"Patient" p
WHERE
	p."PersonID" = :id
LIMIT 2

