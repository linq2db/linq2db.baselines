-- DB2 DB2.LUW DB2LUW
DECLARE @Name VarChar(4) -- String
SET     @Name = 'new1'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 5
DECLARE @UpdatedAt Timestamp -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	"EntityUpdateTest" "t"
SET
	"Name" = CAST(@Name AS NVarChar(4)),
	"Version" = "t"."Version" + @Version,
	"UpdatedAt" = CAST(@UpdatedAt AS timestamp),
	"UpdatedBy" = CAST(@UpdatedBy AS NVarChar(255))
WHERE
	"t"."Id" = @Id

-- DB2 DB2.LUW DB2LUW
DECLARE @Name VarChar(4) -- String
SET     @Name = 'new2'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 10
DECLARE @UpdatedAt Timestamp -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

UPDATE
	"EntityUpdateTest" "t"
SET
	"Name" = CAST(@Name AS NVarChar(4)),
	"Version" = "t"."Version" + @Version,
	"UpdatedAt" = CAST(@UpdatedAt AS timestamp),
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
ORDER BY
	"t1"."Id"

