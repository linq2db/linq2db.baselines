-- DB2 DB2.LUW DB2LUW
DECLARE @Name VarChar(5) -- String
SET     @Name = 'alice'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 1
DECLARE @UpdatedAt Timestamp -- DateTime
SET     @UpdatedAt = NULL
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	"EntityUpdateTest" "t"
SET
	"Name" = CAST(@Name AS NVarChar(5)),
	"Version" = CAST(@Version AS Int),
	"UpdatedAt" = CAST(@UpdatedAt AS timestamp),
	"UpdatedBy" = CAST(@Name AS NVarChar(5))
WHERE
	"t"."Id" = @Id

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."Version",
	"t1"."UpdatedAt",
	"t1"."UpdatedBy"
FROM
	"EntityUpdateTest" "t1"
FETCH NEXT 2 ROWS ONLY

