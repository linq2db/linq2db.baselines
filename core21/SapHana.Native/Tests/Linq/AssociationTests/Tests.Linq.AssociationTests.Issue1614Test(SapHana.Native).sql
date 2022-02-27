BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "User"
(
	"Id" Integer NOT NULL
)

BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Resource"
(
	"Id"                 Integer NOT NULL,
	"AssociatedObjectId" Integer NOT NULL,
	"AssociationTypeId"  Integer     NULL
)

BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Lookup"
(
	"Id"   Integer       NOT NULL,
	"Type" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"t1"."Id",
	"t1"."AssociatedObjectId",
	"t1"."AssociationTypeId",
	"c_1"."Id"
FROM
	"Resource" "t1"
		LEFT JOIN "Lookup" "a_AssociationTypeCode" ON "t1"."AssociationTypeId" = "a_AssociationTypeCode"."Id"
		LEFT JOIN "User" "c_1" ON "a_AssociationTypeCode"."Type" = 'us' AND "c_1"."Id" = "t1"."AssociatedObjectId"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Lookup"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Resource"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "User"

