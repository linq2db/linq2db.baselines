-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

INSERT INTO "User"
(
	"Id"
)
VALUES
(
	:"Id"
)

-- SapHana.Native SapHana
SELECT CURRENT_IDENTITY_VALUE() FROM DUMMY

-- SapHana.Native SapHana
SELECT
	"t1"."Id"
FROM
	"User" "t1"

-- SapHana.Native SapHana
DECLARE @userId Integer -- Int32
SET     @userId = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

SELECT
	"u"."Id"
FROM
	"User" "u"
WHERE
	"u"."Id" = :"userId"
LIMIT 1

-- SapHana.Native SapHana
DECLARE @value Integer -- Int32
SET     @value = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

SELECT
	"u"."Id"
FROM
	"User" "u"
WHERE
	"u"."Id" IN (:"value")
LIMIT 1

