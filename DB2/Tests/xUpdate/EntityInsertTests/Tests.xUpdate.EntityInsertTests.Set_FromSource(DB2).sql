-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'alice'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 1
DECLARE @CreatedAt Timestamp -- DateTime
SET     @CreatedAt = NULL

INSERT INTO "EntityInsertTest"
(
	"Id",
	"Name",
	"Version",
	"CreatedAt",
	"CreatedBy"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Name AS NVarChar(5)),
	CAST(@Version AS Int),
	CAST(@CreatedAt AS timestamp),
	CAST(@Name AS NVarChar(5))
)

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."Version",
	"t1"."CreatedAt",
	"t1"."CreatedBy"
FROM
	"EntityInsertTest" "t1"
FETCH NEXT 2 ROWS ONLY

