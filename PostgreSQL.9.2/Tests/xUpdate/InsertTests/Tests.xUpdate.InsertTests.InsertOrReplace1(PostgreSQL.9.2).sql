-- PostgreSQL.9.2 PostgreSQL
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

-- PostgreSQL.9.2 PostgreSQL
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

-- PostgreSQL.9.2 PostgreSQL
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

-- PostgreSQL.9.2 PostgreSQL
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

-- PostgreSQL.9.2 PostgreSQL
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

-- PostgreSQL.9.2 PostgreSQL
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

