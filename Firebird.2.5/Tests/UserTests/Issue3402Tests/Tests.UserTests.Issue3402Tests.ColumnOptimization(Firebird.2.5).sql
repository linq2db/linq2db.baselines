﻿BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'VEMPLOYEE_SCH_SEC')) THEN
		EXECUTE STATEMENT 'DROP TABLE VEMPLOYEE_SCH_SEC';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'VEMPLOYEE_SCH_SEC')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE VEMPLOYEE_SCH_SEC
			(
				ACTIVE CHAR(1)                                NOT NULL,
				ID     Int                                    NOT NULL,
				NAME   VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,

				CONSTRAINT PK_VEMPLOYEE_SCH_SEC PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'VEMPLOYEE_SCHDL_PERM')) THEN
		EXECUTE STATEMENT 'DROP TABLE VEMPLOYEE_SCHDL_PERM';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'VEMPLOYEE_SCHDL_PERM')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE VEMPLOYEE_SCHDL_PERM
			(
				ID        Int     NOT NULL,
				IS_ACTIVE CHAR(1) NOT NULL,

				CONSTRAINT PK_VEMPLOYEE_SCHDL_PERM PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"ess".ID
FROM
	VEMPLOYEE_SCH_SEC "ess"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			VEMPLOYEE_SCHDL_PERM "y"
		WHERE
			"ess".ID = "y".ID AND "y".IS_ACTIVE = '1'
	)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"ess".ID
FROM
	VEMPLOYEE_SCH_SEC "ess"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'VEMPLOYEE_SCHDL_PERM')) THEN
		EXECUTE STATEMENT 'DROP TABLE VEMPLOYEE_SCHDL_PERM';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'VEMPLOYEE_SCH_SEC')) THEN
		EXECUTE STATEMENT 'DROP TABLE VEMPLOYEE_SCH_SEC';
END

