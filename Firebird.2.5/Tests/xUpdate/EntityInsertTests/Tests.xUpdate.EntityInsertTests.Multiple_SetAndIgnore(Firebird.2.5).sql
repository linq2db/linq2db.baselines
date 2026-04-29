-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(1) -- String
SET     @Name = 'n'
DECLARE @Version Integer -- Int32
SET     @Version = 101
DECLARE @stamp TimeStamp -- DateTime
SET     @stamp = CAST('2026-06-01' AS timestamp)

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
	CAST(@Name AS VARCHAR(1)),
	CAST(@Version AS Int),
	CAST(@stamp AS TimeStamp)
)

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Id",
	"t1"."Name",
	"t1"."Version",
	"t1"."CreatedAt",
	"t1"."CreatedBy"
FROM
	"EntityInsertTest" "t1"

