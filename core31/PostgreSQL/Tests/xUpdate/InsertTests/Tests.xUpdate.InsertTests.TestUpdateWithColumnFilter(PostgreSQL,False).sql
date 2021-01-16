﻿BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

ALTER SEQUENCE "Person_PersonID_seq" RESTART WITH 5

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @FirstName Text(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @LastName Text(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName Text(15) -- String
SET     @MiddleName = 'som middle name'
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
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @FirstName Text(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @LastName Text(8) -- String
SET     @LastName = 'whatever'
DECLARE @Gender Text(1) -- AnsiStringFixedLength
SET     @Gender = 'M'
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	"Person"
SET
	"FirstName" = :FirstName,
	"LastName" = :LastName,
	"Gender" = :Gender
WHERE
	"Person"."PersonID" = :ID

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @newName Text(18) -- String
SET     @newName = 'InsertColumnFilter'

DELETE FROM
	"Person" x
WHERE
	x."FirstName" = :newName

