-- DB2 DB2.LUW DB2LUW
DECLARE @Name VarChar(1) -- String
SET     @Name = 'x'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 5
DECLARE @stamp Timestamp(20) -- DateTime
SET     @stamp = '2026-06-01-00.00.00.000000'
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	"EntityUpdateTest" "t"
SET
	"Name" = CAST(@Name AS NVarChar(1)),
	"Version" = CAST(@Version AS Int),
	"UpdatedAt" = CAST(@stamp AS timestamp),
	"UpdatedBy" = CAST(@UpdatedBy AS NVarChar(255))
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

