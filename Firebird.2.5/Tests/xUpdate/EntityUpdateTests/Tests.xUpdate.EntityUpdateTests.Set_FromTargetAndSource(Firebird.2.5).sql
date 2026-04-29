-- Firebird.2.5 Firebird
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

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Id",
	"t1"."Name",
	"t1"."Version",
	"t1"."UpdatedAt",
	"t1"."UpdatedBy"
FROM
	"EntityUpdateTest" "t1"

