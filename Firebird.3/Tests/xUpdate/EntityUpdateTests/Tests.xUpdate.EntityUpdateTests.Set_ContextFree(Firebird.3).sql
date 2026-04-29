-- Firebird.3 Firebird3
DECLARE @Name VarChar(1) -- String
SET     @Name = 'x'
DECLARE @Version Integer -- Int32
SET     @Version = 5
DECLARE @stamp TimeStamp -- DateTime
SET     @stamp = CAST('2026-06-01' AS timestamp)
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"EntityUpdateTest" "t"
SET
	"Name" = CAST(@Name AS VARCHAR(1)),
	"Version" = CAST(@Version AS Int),
	"UpdatedAt" = CAST(@stamp AS TimeStamp),
	"UpdatedBy" = CAST(@UpdatedBy AS VARCHAR(1))
WHERE
	"t"."Id" = @Id

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."Version",
	"t1"."UpdatedAt",
	"t1"."UpdatedBy"
FROM
	"EntityUpdateTest" "t1"
FETCH NEXT 2 ROWS ONLY

