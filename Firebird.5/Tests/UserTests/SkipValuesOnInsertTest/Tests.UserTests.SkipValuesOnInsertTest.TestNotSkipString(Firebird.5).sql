-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Paul'
DECLARE @Age Integer -- Int32
SET     @Age = 14

INSERT INTO "SkipOnInsertTable"
(
	"Id",
	"Name",
	"Age"
)
VALUES
(
	@Id,
	@Name,
	@Age
)

-- Firebird.5 Firebird4
SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"SkipOnInsertTable" "t"
WHERE
	"t"."Id" = 1
FETCH NEXT 1 ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Mary'
DECLARE @Age Integer -- Int32
SET     @Age = 15

INSERT INTO "SkipOnInsertTable"
(
	"Id",
	"Name",
	"Age"
)
VALUES
(
	@Id,
	@Name,
	@Age
)

-- Firebird.5 Firebird4
SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"SkipOnInsertTable" "t"
WHERE
	"t"."Id" = 2
FETCH NEXT 1 ROWS ONLY

