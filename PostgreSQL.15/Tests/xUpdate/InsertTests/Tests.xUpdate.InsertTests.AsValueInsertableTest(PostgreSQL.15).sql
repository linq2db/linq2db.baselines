BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestInsertOrReplaceTable"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TestInsertOrReplaceTable"
(
	"ID"         Int  NOT NULL,
	"FirstName"  text     NULL,
	"LastName"   text     NULL,
	"MiddleName" text     NULL,

	CONSTRAINT "PK_TestInsertOrReplaceTable" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"TestInsertOrReplaceTable" x
WHERE
	x."ID" = 123 AND x."FirstName" = 'John'

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestInsertOrReplaceTable"

