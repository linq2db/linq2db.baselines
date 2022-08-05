﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "xxPerson"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL (asynchronously)

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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL (asynchronously)
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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	Count(*)
FROM
	"xxPerson" t1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"xxPerson" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 1

DELETE FROM
	"xxPerson" t1
WHERE
	t1."PersonID" = :ID

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	Count(*)
FROM
	"xxPerson" t1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL (asynchronously)

DROP TABLE "xxPerson"

