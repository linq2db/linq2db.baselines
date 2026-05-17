-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(8) -- String
SET     @Name = 'John Doe'
DECLARE @Id_1 VarChar(1) -- String
SET     @Id_1 = '1'
DECLARE @Source VarChar(7) -- String
SET     @Source = 'unknown'

INSERT INTO "Issue3581Table"
(
	"Id",
	"Name",
	"ExternalId",
	"Source"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Name AS VARCHAR(8)),
	CAST(@Id_1 AS VARCHAR(1)),
	CAST(@Source AS VARCHAR(7))
)
RETURNING
	"Issue3581Table"."Id",
	"Issue3581Table"."Name",
	"Issue3581Table"."ExternalId",
	"Issue3581Table"."Source"

