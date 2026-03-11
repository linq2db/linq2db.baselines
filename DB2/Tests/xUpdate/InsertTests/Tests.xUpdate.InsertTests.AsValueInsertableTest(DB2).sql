-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 123
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'John'

INSERT INTO "TestInsertOrReplaceTable"
(
	ID,
	"FirstName"
)
VALUES
(
	@ID,
	@FirstName
)

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"TestInsertOrReplaceTable" "x"
WHERE
	"x".ID = 123 AND "x"."FirstName" = 'John'

