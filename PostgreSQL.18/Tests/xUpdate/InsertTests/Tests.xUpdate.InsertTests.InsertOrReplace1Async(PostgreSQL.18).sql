-- PostgreSQL.18 PostgreSQL
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

-- PostgreSQL.18 PostgreSQL
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

-- PostgreSQL.18 PostgreSQL
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

-- PostgreSQL.18 PostgreSQL
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

-- PostgreSQL.18 PostgreSQL
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

