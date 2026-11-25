-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(8) -- String
SET     @Name = 'John Doe'
DECLARE @Id_1 VarChar(1) -- String
SET     @Id_1 = '1'
DECLARE @Source VarChar(7) -- String
SET     @Source = 'unknown'

INSERT INTO "OutputComplexColumnTable"
(
	"Id",
	"Name",
	"ExternalId",
	"Source"
)
VALUES
(
	@Id,
	@Name,
	@Id_1,
	@Source
)
RETURNING
	"OutputComplexColumnTable"."Id",
	"OutputComplexColumnTable"."Name",
	"OutputComplexColumnTable"."ExternalId",
	"OutputComplexColumnTable"."Source"

