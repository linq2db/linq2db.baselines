BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "stVersions"
(
	"inId"     Integer NOT NULL,
	"inIdMain" Integer NOT NULL,

	PRIMARY KEY ("inId")
)

BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "rlStatesTypesAndUserGroups"
(
	"inIdState" Integer NOT NULL,
	"inIdType"  Integer NOT NULL,

	PRIMARY KEY ("inIdState", "inIdType")
)

BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "stMain"
(
	"inId"     Integer NOT NULL,
	"inIdType" Integer NOT NULL,

	PRIMARY KEY ("inId")
)

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"v"."inId",
	"r"."inIdState",
	"a_Main"."inIdType"
FROM
	"stVersions" "v"
		INNER JOIN "stMain" "a_Main" ON "v"."inIdMain" = "a_Main"."inId"
		LEFT JOIN "rlStatesTypesAndUserGroups" "r" ON "r"."inIdType" = "a_Main"."inIdType"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "stMain"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "rlStatesTypesAndUserGroups"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "stVersions"

