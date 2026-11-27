-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Smith'

INSERT INTO "SkipOnInsertTable"
(
	"Id",
	"Name"
)
VALUES
(
	@Id,
	@Name
)

-- Firebird.3 Firebird3
SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"SkipOnInsertTable" "t"
WHERE
	"t"."Id" = 1
FETCH NEXT 1 ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Tommy'

INSERT INTO "SkipOnInsertTable"
(
	"Id",
	"Name"
)
VALUES
(
	@Id,
	@Name
)

-- Firebird.3 Firebird3
SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"SkipOnInsertTable" "t"
WHERE
	"t"."Id" = 2
FETCH NEXT 1 ROWS ONLY

