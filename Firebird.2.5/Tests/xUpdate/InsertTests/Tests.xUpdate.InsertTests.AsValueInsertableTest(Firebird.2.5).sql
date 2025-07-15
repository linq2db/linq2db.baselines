BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @ID Integer -- Int32
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

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"TestInsertOrReplaceTable" "x"
WHERE
	"x".ID = 123 AND "x"."FirstName" = 'John'

