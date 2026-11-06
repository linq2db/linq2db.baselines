-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Integer -- Int32
SET     @Value = 5
DECLARE @Name VarChar(1) -- String
SET     @Name = 'a'

INSERT INTO "SourceSchemaRow"
(
	"Id",
	"Value",
	"Name"
)
VALUES
(
	@Id,
	@Value,
	@Name
)

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."Name"
FROM
	"SourceSchemaRow" "t1"
FETCH NEXT 2 ROWS ONLY

