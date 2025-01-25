BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"v"."inId",
	"t"."inIdState"
FROM
	"stVersions" "v"
		INNER JOIN "stMain" "a_Main" ON "v"."inIdMain" = "a_Main"."inId"
		LEFT JOIN "rlStatesTypesAndUserGroups" "t" ON "t"."inIdType" = "a_Main"."inIdType"

