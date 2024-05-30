BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'stVersions')) THEN
		EXECUTE STATEMENT 'DROP TABLE "stVersions"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'stVersions')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "stVersions"
			(
				"inId"     Int NOT NULL,
				"inIdMain" Int NOT NULL,

				CONSTRAINT "PK_stVersions" PRIMARY KEY ("inId")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'rlStatesTypesAndUserGroups')) THEN
		EXECUTE STATEMENT 'DROP TABLE "rlStatesTypesAndUserGroups"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'rlStatesTypesAndUserGroups')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "rlStatesTypesAndUserGroups"
			(
				"inIdState" Int NOT NULL,
				"inIdType"  Int NOT NULL,

				CONSTRAINT "PK_rlStatesTypesAndUserGroups" PRIMARY KEY ("inIdState", "inIdType")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'stMain')) THEN
		EXECUTE STATEMENT 'DROP TABLE "stMain"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'stMain')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "stMain"
			(
				"inId"     Int NOT NULL,
				"inIdType" Int NOT NULL,

				CONSTRAINT "PK_stMain" PRIMARY KEY ("inId")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"v"."inId",
	"t"."inIdState",
	"a_Main"."inIdType"
FROM
	"stVersions" "v"
		INNER JOIN "stMain" "a_Main" ON "v"."inIdMain" = "a_Main"."inId"
		LEFT JOIN "rlStatesTypesAndUserGroups" "t" ON "t"."inIdType" = "a_Main"."inIdType"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'stMain')) THEN
		EXECUTE STATEMENT 'DROP TABLE "stMain"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'rlStatesTypesAndUserGroups')) THEN
		EXECUTE STATEMENT 'DROP TABLE "rlStatesTypesAndUserGroups"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'stVersions')) THEN
		EXECUTE STATEMENT 'DROP TABLE "stVersions"';
END

