-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(2) -- String
SET     @Name = 'n1'
DECLARE @Version Integer(4) -- Int32
SET     @Version = 7
DECLARE @CreatedAt Timestamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy VarChar(2) -- String
SET     @CreatedBy = 'u1'

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
	CAST(@Name AS NVarChar(2)),
	CAST(@Version AS Int),
	CAST(@CreatedAt AS timestamp),
	CAST(@CreatedBy AS NVarChar(2))
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

