BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'i1084_person')) THEN
		EXECUTE STATEMENT 'DROP TABLE "i1084_person"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'i1084_person')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "i1084_person"
			(
				"Id"            Int NOT NULL,
				"Number"        Int NOT NULL,
				"StatusBitmask" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'i1084_student')) THEN
		EXECUTE STATEMENT 'DROP TABLE "i1084_student"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'i1084_student')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "i1084_student"
			(
				"Id"            Int                                    NOT NULL,
				"Number"        VarChar(255) CHARACTER SET UNICODE_FSS,
				"StatusBitmask" Int                                    NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	Bin_And("k_1"."StatusBitmask", 128),
	Bin_And("g_1"."StatusBitmask", 128)
FROM
	"i1084_person" "k_1"
		LEFT JOIN "i1084_student" "g_1" ON "k_1"."Id" = "g_1"."Id" AND "k_1"."Number" = "g_1"."Number"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'i1084_student')) THEN
		EXECUTE STATEMENT 'DROP TABLE "i1084_student"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'i1084_person')) THEN
		EXECUTE STATEMENT 'DROP TABLE "i1084_person"';
END

