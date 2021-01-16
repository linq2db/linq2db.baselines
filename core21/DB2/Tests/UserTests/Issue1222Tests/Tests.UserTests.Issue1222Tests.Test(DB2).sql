BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "stLinks"
(
	"inId"          Int           GENERATED ALWAYS AS IDENTITY NOT NULL,
	"inIdParent"    Int                                        NOT NULL,
	"inIdChild"     Int                                        NOT NULL,
	"inIdTypeRel"   Int                                        NOT NULL,
	"inMaxQuantity" Float                                          NULL,
	"inMinQuantity" Float                                          NULL,
	"inIdMeasure"   Int                                            NULL,
	"inIdUnit"      Int                                            NULL,
	"State"         Int                                            NULL,
	"dtModified"    timestamp                                  NOT NULL,
	"inIdOrgOwner"  Int                                            NULL,
	"dtSynchDate"   timestamp                                      NULL,
	"stGUID"        NVarChar(255)                              NOT NULL,

	CONSTRAINT "PK_stLinks" PRIMARY KEY ("inId")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "stVersions"
(
	"inId"     Int GENERATED ALWAYS AS IDENTITY NOT NULL,
	"inIdMain" Int                              NOT NULL,

	CONSTRAINT "PK_stVersions" PRIMARY KEY ("inId")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "stVersions"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "stLinks"

