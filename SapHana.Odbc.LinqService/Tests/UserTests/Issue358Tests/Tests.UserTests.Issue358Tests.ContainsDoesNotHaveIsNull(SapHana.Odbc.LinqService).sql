BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestIssue358Class"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TestIssue358Class"
(
	"MyEnum"  Integer     NULL,
	"MyEnum2" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."MyEnum",
	"p"."MyEnum2"
FROM
	"TestIssue358Class" "p"
WHERE
	"p"."MyEnum" IN (1)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestIssue358Class"

