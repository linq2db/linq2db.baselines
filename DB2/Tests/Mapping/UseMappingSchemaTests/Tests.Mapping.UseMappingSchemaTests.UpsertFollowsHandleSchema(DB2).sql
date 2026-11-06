-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Value Integer(4) -- Int32
SET     @Value = 6
DECLARE @Name VarChar(1) -- String
SET     @Name = 'b'

MERGE INTO "SourceSchemaRow" "t1"
USING (SELECT CAST(@Id AS Int) AS "Id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Value" = CAST(@Value AS Int),
		"Name" = CAST(@Name AS NVarChar(1))
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"Value",
		"Name"
	)
	VALUES
	(
		CAST(@Id AS Int),
		CAST(@Value AS Int),
		CAST(@Name AS NVarChar(1))
	)

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."Name"
FROM
	"SourceSchemaRow" "t1"
ORDER BY
	"t1"."Id"

