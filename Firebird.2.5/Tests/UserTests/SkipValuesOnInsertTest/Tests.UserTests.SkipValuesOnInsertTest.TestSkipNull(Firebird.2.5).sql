-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Tommy'

INSERT INTO "SkipOnInsertNulls"
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
	"SkipOnInsertNulls" "t"
WHERE
	"t"."Id" = 1

