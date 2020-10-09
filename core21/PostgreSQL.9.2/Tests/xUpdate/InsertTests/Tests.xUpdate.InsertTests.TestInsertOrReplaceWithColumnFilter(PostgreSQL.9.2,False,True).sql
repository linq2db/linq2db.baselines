BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "TestInsertOrReplaceTable"
(
	"ID"         Int  NOT NULL,
	"FirstName"  text     NULL,
	"LastName"   text     NULL,
	"MiddleName" text     NULL,

	CONSTRAINT "PK_TestInsertOrReplaceTable" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @FirstName Text(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName Text(8) -- String
SET     @LastName = 'whatever'
DECLARE @ID Integer -- Int32
SET     @ID = 0

UPDATE
	"TestInsertOrReplaceTable"
SET
	"FirstName" = :FirstName,
	"LastName" = :LastName
WHERE
	"TestInsertOrReplaceTable"."ID" = :ID

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 0
DECLARE @FirstName Text(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName Text(8) -- String
SET     @LastName = 'whatever'

INSERT INTO "TestInsertOrReplaceTable"
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

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @FirstName_1 Text(27) -- String
SET     @FirstName_1 = 'InsertOrReplaceColumnFilter'
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
	x."FirstName" = :FirstName_1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @FirstName Text(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName Text(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName Text(12) -- String
SET     @MiddleName = 'updated name'
DECLARE @ID Integer -- Int32
SET     @ID = 0

UPDATE
	"TestInsertOrReplaceTable"
SET
	"FirstName" = :FirstName,
	"LastName" = :LastName,
	"MiddleName" = :MiddleName
WHERE
	"TestInsertOrReplaceTable"."ID" = :ID

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @FirstName_1 Text(27) -- String
SET     @FirstName_1 = 'InsertOrReplaceColumnFilter'
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
	x."FirstName" = :FirstName_1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "TestInsertOrReplaceTable"

