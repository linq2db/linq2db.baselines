BeforeExecute
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4

SELECT
	"t1"."Id"
FROM
	"User" "t1"

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @userId Integer -- Int32
SET     @userId = 5

SELECT
	"u"."Id"
FROM
	"User" "u"
WHERE
	"u"."Id" = @userId
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"u"."Id"
FROM
	"User" "u"
WHERE
	"u"."Id" IN (5)
FETCH NEXT 1 ROWS ONLY

