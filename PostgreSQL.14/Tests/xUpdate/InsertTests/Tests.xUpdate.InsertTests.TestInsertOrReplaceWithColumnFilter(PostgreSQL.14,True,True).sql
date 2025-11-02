-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 0
DECLARE @FirstName Text(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName Text(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName Text(15) -- String
SET     @MiddleName = 'som middle name'

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

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @FirstName Text(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'

SELECT
	x."ID",
	x."FirstName",
	x."LastName",
	x."MiddleName"
FROM
	"TestInsertOrReplaceTable" x
WHERE
	x."FirstName" = :FirstName
LIMIT 1

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @FirstName Text(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'

SELECT
	x."ID",
	x."FirstName",
	x."LastName",
	x."MiddleName"
FROM
	"TestInsertOrReplaceTable" x
WHERE
	x."FirstName" = :FirstName
LIMIT 1

