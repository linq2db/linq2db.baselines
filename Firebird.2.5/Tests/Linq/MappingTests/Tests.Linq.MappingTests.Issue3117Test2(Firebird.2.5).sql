BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "User"
(
	"Id"
)
VALUES
(
	@Id
)
RETURNING
	"Id"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id"
FROM
	"User" "t1"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @userId Integer -- Int32
SET     @userId = 5

SELECT FIRST 1
	"u"."Id"
FROM
	"User" "u"
WHERE
	"u"."Id" = @userId

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"u"."Id"
FROM
	"User" "u"
WHERE
	"u"."Id" IN (5)

