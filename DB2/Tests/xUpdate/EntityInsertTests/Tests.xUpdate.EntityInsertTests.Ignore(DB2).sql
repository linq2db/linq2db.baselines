-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(1) -- String
SET     @Name = 'n'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 1
DECLARE @CreatedAt Timestamp -- DateTime
SET     @CreatedAt = NULL

INSERT INTO "EntityInsertTest"
(
	"Id",
	"Name",
	"Version",
	"CreatedAt"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Name AS NVarChar(1)),
	CAST(@Version AS Int),
	CAST(@CreatedAt AS timestamp)
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

