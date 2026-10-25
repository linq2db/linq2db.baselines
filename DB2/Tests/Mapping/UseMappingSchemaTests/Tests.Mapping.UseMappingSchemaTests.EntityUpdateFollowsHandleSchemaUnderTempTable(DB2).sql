-- DB2 DB2.LUW DB2LUW
CREATE TABLE "SourceSchemaRowTemp"
(
	"Id"    Int           NOT NULL,
	"Value" Int           NOT NULL,
	"Name"  NVarChar(255)     NULL,

	CONSTRAINT "PK_SourceSchemaRowTemp" PRIMARY KEY ("Id", "Value")
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Value Integer(4) -- Int32
SET     @Value = 6
DECLARE @Name VarChar(1) -- String
SET     @Name = 'b'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	"SourceSchemaRow" "t"
SET
	"Value" = CAST(@Value AS Int),
	"Name" = CAST(@Name AS NVarChar(1))
WHERE
	"t"."Id" = @Id

-- DB2 DB2.LUW DB2LUW
BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "SourceSchemaRowTemp"';
END

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."Name"
FROM
	"SourceSchemaRow" "t1"
FETCH NEXT 2 ROWS ONLY

