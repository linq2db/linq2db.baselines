BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "xxPerson"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

CREATE TABLE "xxPerson"
(
	"FirstName"  text     NOT NULL,
	"PersonID"   SERIAL   NOT NULL,
	"LastName"   text     NOT NULL,
	"MiddleName" text         NULL,
	"Gender"     Char(1)  NOT NULL,

	CONSTRAINT "PK_xxPerson" PRIMARY KEY ("PersonID")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @FirstName Text(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName Text(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName Text -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'

INSERT INTO "xxPerson"
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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	COUNT(*)
FROM
	"xxPerson" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"xxPerson" t1
LIMIT 2

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @FirstName Text(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName Text(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName Text(4) -- String
SET     @MiddleName = 'None'
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'
DECLARE @ID Integer -- Int32
SET     @ID = 1

UPDATE
	"xxPerson"
SET
	"FirstName" = :FirstName,
	"LastName" = :LastName,
	"MiddleName" = :MiddleName,
	"Gender" = :Gender
WHERE
	"xxPerson"."PersonID" = :ID

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"xxPerson" t1
LIMIT 2

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

DROP TABLE "xxPerson"

