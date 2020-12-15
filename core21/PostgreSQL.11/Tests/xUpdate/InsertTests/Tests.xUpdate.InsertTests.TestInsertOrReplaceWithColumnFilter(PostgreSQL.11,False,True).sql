﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "TestInsertOrReplaceTable"
(
	"ID"         Int  NOT NULL,
	"FirstName"  text     NULL,
	"LastName"   text     NULL,
	"MiddleName" text     NULL,

	CONSTRAINT "PK_TestInsertOrReplaceTable" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 0
DECLARE @FirstName Text(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName Text(8) -- String
SET     @LastName = 'whatever'

INSERT INTO "TestInsertOrReplaceTable" AS t1
(
	"ID",
	"FirstName",
	"LastName"
)
VALUES
(
	:ID,
	:FirstName,
	:LastName
)
ON CONFLICT ("ID") DO UPDATE SET
	"FirstName" = :FirstName,
	"LastName" = :LastName

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @FirstName Text(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	x."ID",
	x."FirstName",
	x."LastName",
	x."MiddleName"
FROM
	"TestInsertOrReplaceTable" x
WHERE
	x."FirstName" = :FirstName
LIMIT :take

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 0
DECLARE @FirstName Text(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName Text(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName Text(12) -- String
SET     @MiddleName = 'updated name'

INSERT INTO "TestInsertOrReplaceTable" AS t1
(
	"ID",
	"FirstName",
	"LastName",
	"MiddleName"
)
VALUES
(
	:ID,
	:FirstName,
	:LastName,
	:MiddleName
)
ON CONFLICT ("ID") DO UPDATE SET
	"FirstName" = :FirstName,
	"LastName" = :LastName,
	"MiddleName" = :MiddleName

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @FirstName Text(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	x."ID",
	x."FirstName",
	x."LastName",
	x."MiddleName"
FROM
	"TestInsertOrReplaceTable" x
WHERE
	x."FirstName" = :FirstName
LIMIT :take

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE "TestInsertOrReplaceTable"

