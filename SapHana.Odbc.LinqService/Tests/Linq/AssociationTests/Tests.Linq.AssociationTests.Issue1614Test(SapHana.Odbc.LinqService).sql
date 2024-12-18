BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "User"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "User"
(
	"Id" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Resource"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Resource"
(
	"Id"                 Integer NOT NULL,
	"AssociatedObjectId" Integer NOT NULL,
	"AssociationTypeId"  Integer     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Lookup"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Lookup"
(
	"Id"   Integer       NOT NULL,
	"Type" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."AssociatedObjectId",
	"t1"."AssociationTypeId",
	"a_User"."Id"
FROM
	"Resource" "t1"
		LEFT JOIN "Lookup" "a_AssociationTypeCode" ON "t1"."AssociationTypeId" = "a_AssociationTypeCode"."Id" AND "t1"."AssociationTypeId" IS NOT NULL
		LEFT JOIN "User" "a_User" ON "a_AssociationTypeCode"."Type" = 'us' AND "a_AssociationTypeCode"."Type" IS NOT NULL AND "a_User"."Id" = "t1"."AssociatedObjectId"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Lookup"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Resource"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "User"

