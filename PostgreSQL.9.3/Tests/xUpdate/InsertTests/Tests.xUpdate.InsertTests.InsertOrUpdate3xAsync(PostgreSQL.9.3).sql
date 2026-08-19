-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
DECLARE @i Integer -- Int32
SET     @i = 0
DECLARE @id2 Integer -- Int32
SET     @id2 = 5

UPDATE
	"Patient"
SET
	"Diagnosis" = (Length("Patient"."Diagnosis") + :i)::text
WHERE
	"Patient"."PersonID" = :id2

-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
DECLARE @i Integer -- Int32
SET     @i = 1
DECLARE @id2 Integer -- Int32
SET     @id2 = 5

UPDATE
	"Patient"
SET
	"Diagnosis" = (Length("Patient"."Diagnosis") + :i)::text
WHERE
	"Patient"."PersonID" = :id2

-- PostgreSQL.9.3 PostgreSQL
DECLARE @i Integer -- Int32
SET     @i = 2
DECLARE @id2 Integer -- Int32
SET     @id2 = 5

UPDATE
	"Patient"
SET
	"Diagnosis" = (Length("Patient"."Diagnosis") + :i)::text
WHERE
	"Patient"."PersonID" = :id2

-- PostgreSQL.9.3 PostgreSQL
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

