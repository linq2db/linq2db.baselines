BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "User"
(
	"Id" Integer NOT NULL
)

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

CREATE COLUMN TABLE "Lookup"
(
	"Id"   Integer       NOT NULL,
	"Type" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Lookup"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Resource"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "User"

