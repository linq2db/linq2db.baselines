-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Smith'
DECLARE @Age Integer -- Int32
SET     @Age = 55

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
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Tommy'
DECLARE @Age Integer -- Int32
SET     @Age = 50

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

