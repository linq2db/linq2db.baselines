BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "TestInsertOrReplaceTable"
(
	"ID"         Int  NOT NULL,
	"FirstName"  text     NULL,
	"LastName"   text     NULL,
	"MiddleName" text     NULL,

	CONSTRAINT "PK_TestInsertOrReplaceTable" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 123
DECLARE @FirstName Text(4) -- String
SET     @FirstName = 'John'

INSERT INTO "TestInsertOrReplaceTable"
(
	"ID",
	"FirstName"
)
VALUES
(
	:ID,
	:FirstName
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Count(*)
FROM
	"TestInsertOrReplaceTable" x
WHERE
	x."ID" = 123 AND x."FirstName" = 'John'

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "TestInsertOrReplaceTable"

