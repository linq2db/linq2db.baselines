﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

ALTER SEQUENCE "Person_PersonID_seq" RESTART WITH 5

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @FirstName Varchar(3) -- String
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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
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

