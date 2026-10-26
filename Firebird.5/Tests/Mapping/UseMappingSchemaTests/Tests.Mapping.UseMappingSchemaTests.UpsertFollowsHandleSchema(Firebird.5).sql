-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Integer -- Int32
SET     @Value = 6
DECLARE @Name VarChar(1) -- String
SET     @Name = 'b'

MERGE INTO "SourceSchemaRow" "t1"
USING (SELECT CAST(@Id AS Int) AS "Id" FROM rdb$database) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Value" = CAST(@Value AS Int),
		"Name" = CAST(@Name AS VARCHAR(1))
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
		CAST(@Name AS VARCHAR(1))
	)

-- Firebird.5 Firebird4
SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."Name"
FROM
	"SourceSchemaRow" "t1"
ORDER BY
	"t1"."Id"

