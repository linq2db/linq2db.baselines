BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @Code VarChar(5) -- String
SET     @Code = 'Child'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Jane'
DECLARE @IsMale Char -- String
SET     @IsMale = '0'

INSERT INTO "Base"
(
	"Code",
	"Id",
	"Name",
	"IsMale"
)
VALUES
(
	@Code,
	@Id,
	@Name,
	@IsMale
)

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @Code VarChar(6) -- String
SET     @Code = 'Child2'
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name VarChar -- String
SET     @Name = NULL
DECLARE @Age Integer -- Int32
SET     @Age = 10

INSERT INTO "Base"
(
	"Code",
	"Id",
	"Name",
	"Age"
)
VALUES
(
	@Code,
	@Id,
	@Name,
	@Age
)

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"e"."Code",
	"e"."Id",
	"e"."Name",
	"e"."IsMale",
	"e"."Age"
FROM
	"Base" "e"
WHERE
	"e"."Code" = 'Child2' OR
	"e"."Code" = 'Child' OR
	"e"."Code" = 'BaseChild' OR
	"e"."Id" = 0
ORDER BY
	"e"."Id"

