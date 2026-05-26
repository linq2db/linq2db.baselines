-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(1) -- String
SET     @Name = 'n'
DECLARE @Version Integer -- Int32
SET     @Version = 101
DECLARE @stamp TimeStamp -- DateTime
SET     @stamp = TIMESTAMP '2026-06-01 00:00:00.0000'

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

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."Version",
	"t1"."CreatedAt",
	"t1"."CreatedBy"
FROM
	"EntityInsertTest" "t1"
FETCH NEXT 2 ROWS ONLY

