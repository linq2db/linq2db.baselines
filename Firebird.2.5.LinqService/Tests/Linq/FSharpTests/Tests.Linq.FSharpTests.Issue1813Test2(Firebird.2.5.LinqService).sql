﻿BeforeExecute
-- Firebird.2.5 Firebird
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
-- Firebird.2.5 Firebird
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
-- Firebird.2.5 Firebird
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
-- Firebird.2.5 Firebird

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Text"
FROM
	(
		SELECT DISTINCT
			"Item1"."Id"
		FROM
			"Names" "Item1"
	) "m_1"
		INNER JOIN "Addresses" "d" ON "m_1"."Id" = "d"."Id"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"tupledArg"."Id",
	"tupledArg"."Name"
FROM
	"Names" "tupledArg"
ORDER BY
	"tupledArg"."Id"

