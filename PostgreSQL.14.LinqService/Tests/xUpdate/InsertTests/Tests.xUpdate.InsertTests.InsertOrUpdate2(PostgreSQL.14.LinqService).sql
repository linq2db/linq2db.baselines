BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
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

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 5

INSERT INTO "Patient" AS t1
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:id,
	'negative'
)
ON CONFLICT ("PersonID") DO NOTHING

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT
	p."PersonID",
	p."Diagnosis"
FROM
	"Patient" p
WHERE
	p."PersonID" = :id

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 5

INSERT INTO "Patient" AS t1
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:id,
	'positive'
)
ON CONFLICT ("PersonID") DO NOTHING

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT
	p."PersonID",
	p."Diagnosis"
FROM
	"Patient" p
WHERE
	p."PersonID" = :id

