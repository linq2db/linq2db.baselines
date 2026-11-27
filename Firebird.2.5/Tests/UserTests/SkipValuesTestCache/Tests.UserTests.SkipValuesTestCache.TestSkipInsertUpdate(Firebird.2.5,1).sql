-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'

INSERT INTO "SkipOnInsertCache"
(
	"Id",
	"Name"
)
VALUES
(
	@Id,
	@Name
)

-- Firebird.2.5 Firebird
SELECT FIRST 1
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"SkipOnInsertCache" "t"
WHERE
	"t"."Id" = 1

-- Firebird.2.5 Firebird
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"SkipOnInsertCache" "t1"
SET
	"Name" = CAST(@Name AS VARCHAR(4))
WHERE
	"t1"."Id" = @Id

-- Firebird.2.5 Firebird
SELECT FIRST 1
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"SkipOnInsertCache" "t"
WHERE
	"t"."Id" = 1

