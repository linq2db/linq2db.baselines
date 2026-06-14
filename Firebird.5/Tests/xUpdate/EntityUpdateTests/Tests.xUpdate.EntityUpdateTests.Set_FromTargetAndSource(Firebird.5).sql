-- Firebird.5 Firebird4
DECLARE @Name VarChar(1) -- String
SET     @Name = 'n'
DECLARE @Version Integer -- Int32
SET     @Version = 3
DECLARE @UpdatedAt TimeStamp -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"EntityUpdateTest" "t"
SET
	"Name" = CAST(@Name AS VARCHAR(1)),
	"Version" = "t"."Version" + CAST(@Version AS Int),
	"UpdatedAt" = CAST(@UpdatedAt AS TimeStamp),
	"UpdatedBy" = CAST(@UpdatedBy AS VARCHAR(1))
WHERE
	"t"."Id" = @Id

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."Version",
	"t1"."UpdatedAt",
	"t1"."UpdatedBy"
FROM
	"EntityUpdateTest" "t1"
FETCH NEXT 2 ROWS ONLY

