-- PostgreSQL.9.2 PostgreSQL
DECLARE @FirstName Text(4) -- String
SET     @FirstName = 'test'
DECLARE @LastName Text(7) -- String
SET     @LastName = 'subject'
DECLARE @MiddleName Text -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'U'

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
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT
	1
FROM
	"Patient" t1
WHERE
	t1."PersonID" = :id

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
	'negative'
)

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

-- PostgreSQL.9.2 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT
	1
FROM
	"Patient" t1
WHERE
	t1."PersonID" = :id

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

