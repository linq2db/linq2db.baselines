﻿BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "i1084_person"
(
	"Id"            Int NOT NULL,
	"Number"        Int NOT NULL,
	"StatusBitmask" Int NOT NULL
)

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "i1084_student"
(
	"Id"            Int                                    NOT NULL,
	"Number"        VarChar(255) CHARACTER SET UNICODE_FSS,
	"StatusBitmask" Int                                    NOT NULL
)

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'i1084_student')) THEN
		EXECUTE STATEMENT 'DROP TABLE "i1084_student"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'i1084_person')) THEN
		EXECUTE STATEMENT 'DROP TABLE "i1084_person"';
END

