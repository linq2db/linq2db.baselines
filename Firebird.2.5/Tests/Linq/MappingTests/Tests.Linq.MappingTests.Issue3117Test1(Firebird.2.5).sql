BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]
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
SET     @userId = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

SELECT FIRST 1
	"u"."Id"
FROM
	"User" "u"
WHERE
	"u"."Id" = @userId

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @value Integer -- Int32
SET     @value = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

SELECT FIRST 1
	"u"."Id"
FROM
	"User" "u"
WHERE
	"u"."Id" IN (@value)

