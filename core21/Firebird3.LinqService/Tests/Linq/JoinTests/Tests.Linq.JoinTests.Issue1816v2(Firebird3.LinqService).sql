BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "stVersions"
(
	"inId"     Int NOT NULL,
	"inIdMain" Int NOT NULL,

	CONSTRAINT "PK_stVersions" PRIMARY KEY ("inId")
)

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "rlStatesTypesAndUserGroups"
(
	"inIdState" Int NOT NULL,
	"inIdType"  Int NOT NULL,

	CONSTRAINT "PK_rlStatesTypesAndUserGroups" PRIMARY KEY ("inIdState", "inIdType")
)

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "stMain"
(
	"inId"     Int NOT NULL,
	"inIdType" Int NOT NULL,

	CONSTRAINT "PK_stMain" PRIMARY KEY ("inId")
)

BeforeExecute
-- Firebird3 Firebird

SELECT 
	"v"."inId", 
	"r"."inIdState", 
	"a_Main"."inIdType"
FROM
	"stVersions" "v"
		INNER JOIN "stMain" "a_Main" ON "v"."inIdMain" = "a_Main"."inId"
		LEFT JOIN "rlStatesTypesAndUserGroups" "r" ON "r"."inIdType" = "a_Main"."inIdType"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "stMain"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "rlStatesTypesAndUserGroups"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "stVersions"

