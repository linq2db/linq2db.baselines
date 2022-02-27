BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

ALTER SEQUENCE "Person_PersonID_seq" RESTART WITH 5

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @FirstName Text(3) -- String
SET     @FirstName = '123'
DECLARE @LastName Text(3) -- String
SET     @LastName = '456'
DECLARE @MiddleName Text(3) -- String
SET     @MiddleName = '789'
DECLARE @Gender Text(1) -- String
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
-- PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 5
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t."PersonID",
	t."FirstName",
	t."LastName",
	t."MiddleName",
	t."Gender"
FROM
	"Person" t
WHERE
	t."PersonID" = :id
LIMIT :take

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 5
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t."PersonID",
	t."FirstName",
	t."LastName",
	t."MiddleName",
	t."Gender"
FROM
	"Person" t
WHERE
	t."PersonID" = :id
LIMIT :take

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 5
DECLARE @FirstName Text(3) -- String
SET     @FirstName = '123'
DECLARE @LastName Text(3) -- String
SET     @LastName = '456'
DECLARE @MiddleName Text(3) -- String
SET     @MiddleName = '789'
DECLARE @Gender Text(1) -- String
SET     @Gender = 'M'

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" = :PersonID AND
	t1."FirstName" = :FirstName AND
	t1."LastName" = :LastName AND
	t1."MiddleName" = :MiddleName AND
	t1."Gender" = :Gender

