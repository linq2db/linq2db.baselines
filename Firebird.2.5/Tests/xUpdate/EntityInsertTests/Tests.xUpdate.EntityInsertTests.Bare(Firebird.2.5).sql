-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(2) -- String
SET     @Name = 'n1'
DECLARE @Version Integer -- Int32
SET     @Version = 7
DECLARE @CreatedAt TimeStamp -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy VarChar(2) -- String
SET     @CreatedBy = 'u1'

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
	CAST(@Name AS VARCHAR(2)),
	CAST(@Version AS Int),
	CAST(@CreatedAt AS TimeStamp),
	CAST(@CreatedBy AS VARCHAR(2))
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

