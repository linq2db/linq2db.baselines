BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "stVersions"
(
	"inId"     Int NOT NULL,
	"inIdMain" Int NOT NULL,

	CONSTRAINT "PK_stVersions" PRIMARY KEY ("inId")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "rlStatesTypesAndUserGroups"
(
	"inIdState" Int NOT NULL,
	"inIdType"  Int NOT NULL,

	CONSTRAINT "PK_rlStatesTypesAndUserGroups" PRIMARY KEY ("inIdState", "inIdType")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "stMain"
(
	"inId"     Int NOT NULL,
	"inIdType" Int NOT NULL,

	CONSTRAINT "PK_stMain" PRIMARY KEY ("inId")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"v"."inId", 
	"r"."inIdState"
FROM
	"stVersions" "v"
		INNER JOIN "stMain" "a_Main" ON "v"."inIdMain" = "a_Main"."inId"
		LEFT JOIN "rlStatesTypesAndUserGroups" "r" ON "r"."inIdType" = "a_Main"."inIdType"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "stMain"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "rlStatesTypesAndUserGroups"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "stVersions"

