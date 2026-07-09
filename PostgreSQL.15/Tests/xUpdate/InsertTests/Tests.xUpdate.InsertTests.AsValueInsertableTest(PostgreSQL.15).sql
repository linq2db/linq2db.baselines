-- PostgreSQL.15 PostgreSQL13
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

-- PostgreSQL.15 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"TestInsertOrReplaceTable" x
WHERE
	x."ID" = 123 AND x."FirstName" = 'John'

