﻿BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'i1084_person')) THEN
		EXECUTE STATEMENT 'DROP TABLE "i1084_person"';
END

BeforeExecute
-- Firebird4 Firebird

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
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'i1084_student')) THEN
		EXECUTE STATEMENT 'DROP TABLE "i1084_student"';
END

BeforeExecute
-- Firebird4 Firebird

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
-- Firebird4 Firebird

SELECT
	"k_1"."StatusBitmask",
	"joinedTable"."StatusBitmask"
FROM
	"i1084_person" "k_1"
		LEFT JOIN "i1084_student" "joinedTable" ON "k_1"."Id" = "joinedTable"."Id" AND Cast("k_1"."Number" as VarChar(11) CHARACTER SET UNICODE_FSS) = "joinedTable"."Number"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'i1084_student')) THEN
		EXECUTE STATEMENT 'DROP TABLE "i1084_student"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'i1084_person')) THEN
		EXECUTE STATEMENT 'DROP TABLE "i1084_person"';
END

