BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'name1'

INSERT INTO "Names"
(
	"Id",
	"Name"
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name VarChar(5) -- String
SET     @Name = 'name2'

INSERT INTO "Names"
(
	"Id",
	"Name"
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Text VarChar(7) -- String
SET     @Text = 'address'

INSERT INTO "Addresses"
(
	"Id",
	"Text"
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"tupledArg"."Id",
	"tupledArg"."Name",
	"arg2"."Id",
	"arg2"."Text"
FROM
	"Names" "tupledArg"
		LEFT JOIN "Addresses" "arg2" ON "tupledArg"."Id" = "arg2"."Id"
ORDER BY
	"tupledArg"."Id"

