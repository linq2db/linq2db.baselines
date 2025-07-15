BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

INSERT INTO "User"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT CURRENT_IDENTITY_VALUE() FROM DUMMY

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id"
FROM
	"User" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @userId Int -- Int32
SET     @userId = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

SELECT
	"u"."Id"
FROM
	"User" "u"
WHERE
	"u"."Id" = ?
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @value Int -- Int32
SET     @value = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

SELECT
	"u"."Id"
FROM
	"User" "u"
WHERE
	"u"."Id" IN (?)
LIMIT 1

