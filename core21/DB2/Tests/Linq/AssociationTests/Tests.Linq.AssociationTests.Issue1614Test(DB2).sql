BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "User"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Resource"
(
	"Id"                 Int NOT NULL,
	"AssociatedObjectId" Int NOT NULL,
	"AssociationTypeId"  Int     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Lookup"
(
	"Id"   Int           NOT NULL,
	"Type" NVarChar(255)     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Lookup"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Resource"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "User"

