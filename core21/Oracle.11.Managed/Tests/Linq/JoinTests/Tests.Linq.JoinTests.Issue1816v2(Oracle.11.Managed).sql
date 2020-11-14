BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "stVersions"
(
	"inId"     Int NOT NULL,
	"inIdMain" Int NOT NULL,

	CONSTRAINT "PK_stVersions" PRIMARY KEY ("inId")
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "rlStatesTypesAndUserGroups"
(
	"inIdState" Int NOT NULL,
	"inIdType"  Int NOT NULL,

	CONSTRAINT "PK_rlStatesTypesAndUserGroups" PRIMARY KEY ("inIdState", "inIdType")
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "stMain"
(
	"inId"     Int NOT NULL,
	"inIdType" Int NOT NULL,

	CONSTRAINT "PK_stMain" PRIMARY KEY ("inId")
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	v."inId",
	r."inIdState",
	a_Main."inIdType"
FROM
	"stVersions" v
		INNER JOIN "stMain" a_Main ON v."inIdMain" = a_Main."inId"
		LEFT JOIN "rlStatesTypesAndUserGroups" r ON r."inIdType" = a_Main."inIdType"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "stMain"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "rlStatesTypesAndUserGroups"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "stVersions"

