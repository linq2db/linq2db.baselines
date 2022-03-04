BeforeExecute
-- Firebird4 Firebird

CREATE TABLE VEMPLOYEE_SCH_SEC
(
	ACTIVE CHAR                                   NOT NULL,
	ID     Int                                    NOT NULL,
	NAME   VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,

	CONSTRAINT PK_VEMPLOYEE_SCH_SEC PRIMARY KEY (ID)
)

BeforeExecute
-- Firebird4 Firebird

CREATE TABLE VEMPLOYEE_SCHDL_PERM
(
	ID        Int  NOT NULL,
	IS_ACTIVE CHAR NOT NULL,

	CONSTRAINT PK_VEMPLOYEE_SCHDL_PERM PRIMARY KEY (ID)
)

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t1".ID
FROM
	(
		SELECT
			CASE
				WHEN EXISTS(
					SELECT
						*
					FROM
						VEMPLOYEE_SCHDL_PERM "y"
					WHERE
						"ess".ID = "y".ID AND "y".IS_ACTIVE = 1
				)
					THEN 1
				ELSE 0
			END as "hasAdditionalPermissions",
			"ess".ID
		FROM
			VEMPLOYEE_SCH_SEC "ess"
	) "t1"
WHERE
	"t1"."hasAdditionalPermissions" = 1 AND "t1"."hasAdditionalPermissions" IS NOT NULL

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'VEMPLOYEE_SCHDL_PERM')) THEN
		EXECUTE STATEMENT 'DROP TABLE VEMPLOYEE_SCHDL_PERM';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'VEMPLOYEE_SCH_SEC')) THEN
		EXECUTE STATEMENT 'DROP TABLE VEMPLOYEE_SCH_SEC';
END

