-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age Integer -- Int32
SET     @Age = 15

INSERT INTO "SkipCustomValuesTable"
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
	"SkipCustomValuesTable" "t"
WHERE
	"t"."Id" = 1
FETCH NEXT 1 ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name VarChar(3) -- String
SET     @Name = 'Max'

INSERT INTO "SkipCustomValuesTable"
(
	"Id",
	"Name"
)
VALUES
(
	@Id,
	@Name
)

-- Firebird.5 Firebird4
SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"SkipCustomValuesTable" "t"
WHERE
	"t"."Id" = 2
FETCH NEXT 1 ROWS ONLY

