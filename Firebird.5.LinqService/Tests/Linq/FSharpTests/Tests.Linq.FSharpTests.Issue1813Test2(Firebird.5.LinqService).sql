BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
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
-- Firebird.5 Firebird4 (asynchronously)
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
-- Firebird.5 Firebird4 (asynchronously)
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
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Text"
FROM
	"Names" "m_1"
		LEFT JOIN "Addresses" "d" ON "m_1"."Id" = "d"."Id"
ORDER BY
	"m_1"."Id"

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"tupledArg"."Id",
	"tupledArg"."Name"
FROM
	"Names" "tupledArg"
ORDER BY
	"tupledArg"."Id"

