BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

ALTER SEQUENCE "Person_PersonID_seq" RESTART WITH 5

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @FirstName Text(18) -- String
SET     @FirstName = 'UpdateColumnFilter'
DECLARE @LastName Text(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName Text -- String
SET     @MiddleName = NULL
DECLARE @Gender Text(1) -- AnsiStringFixedLength
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

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @FirstName Text(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	"Person"
SET
	"FirstName" = :FirstName
WHERE
	"Person"."PersonID" = :ID

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @FirstName Text(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @LastName Text(25) -- String
SET     @LastName = 'UpdateColumnFilterUpdated'
DECLARE @MiddleName Text -- String
SET     @MiddleName = NULL
DECLARE @Gender Text(1) -- AnsiStringFixedLength
SET     @Gender = 'M'
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	"Person"
SET
	"FirstName" = :FirstName,
	"LastName" = :LastName,
	"MiddleName" = :MiddleName,
	"Gender" = :Gender
WHERE
	"Person"."PersonID" = :ID

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 5

DELETE FROM
	"Person" x
WHERE
	x."PersonID" = :ID

