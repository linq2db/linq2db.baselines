BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "stVersions"
(
	"inId"     Int NOT NULL,
	"inIdMain" Int NOT NULL,

	CONSTRAINT "PK_stVersions" PRIMARY KEY ("inId")
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "rlStatesTypesAndUserGroups"
(
	"inIdState" Int NOT NULL,
	"inIdType"  Int NOT NULL,

	CONSTRAINT "PK_rlStatesTypesAndUserGroups" PRIMARY KEY ("inIdState", "inIdType")
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "stMain"
(
	"inId"     Int NOT NULL,
	"inIdType" Int NOT NULL,

	CONSTRAINT "PK_stMain" PRIMARY KEY ("inId")
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	v."inId", 
	r."inIdState"
FROM
	"stVersions" v
		INNER JOIN "stMain" "a_Main" ON v."inIdMain" = "a_Main"."inId"
		LEFT JOIN "rlStatesTypesAndUserGroups" r ON r."inIdType" = "a_Main"."inIdType"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "stMain"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "rlStatesTypesAndUserGroups"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "stVersions"

