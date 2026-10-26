-- Firebird.2.5 Firebird
CREATE TABLE "SourceSchemaRowTemp"
(
	"Id"    Int                                    NOT NULL,
	"Value" Int                                    NOT NULL,
	"Name"  VarChar(255) CHARACTER SET UNICODE_FSS,

	CONSTRAINT "PK_SourceSchemaRowTemp" PRIMARY KEY ("Id", "Value")
)

-- Firebird.2.5 Firebird
DECLARE @Value Integer -- Int32
SET     @Value = 6
DECLARE @Name VarChar(1) -- String
SET     @Name = 'b'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"SourceSchemaRow" "t"
SET
	"Value" = CAST(@Value AS Int),
	"Name" = CAST(@Name AS VARCHAR(1))
WHERE
	"t"."Id" = @Id

-- Firebird.2.5 Firebird
EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SourceSchemaRowTemp')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SourceSchemaRowTemp"';
END

-- Firebird.2.5 Firebird
SELECT FIRST 2
	"t1"."Id",
	"t1"."Value",
	"t1"."Name"
FROM
	"SourceSchemaRow" "t1"

