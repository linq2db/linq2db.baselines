BeforeExecute
-- Firebird.3 Firebird3
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
-- Firebird.3 Firebird3

SELECT
	"t1"."Id"
FROM
	"User" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @userId Integer -- Int32
SET     @userId = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

SELECT
	"u"."Id"
FROM
	"User" "u"
WHERE
	"u"."Id" = @userId
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @value Integer -- Int32
SET     @value = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

SELECT
	"u"."Id"
FROM
	"User" "u"
WHERE
	"u"."Id" IN (@value)
FETCH NEXT 1 ROWS ONLY

