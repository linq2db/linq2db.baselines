-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'async'
DECLARE @Version Integer -- Int32
SET     @Version = 3
DECLARE @CreatedAt TimeStamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy VarChar -- String
SET     @CreatedBy = NULL

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
	CAST(@Name AS VARCHAR(5)),
	CAST(@Version AS Int),
	CAST(@CreatedAt AS TimeStamp),
	CAST(@CreatedBy AS VARCHAR(1))
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

