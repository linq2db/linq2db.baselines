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
DECLARE @fullAccess Char(1) -- String
SET     @fullAccess = '0'

SELECT
	"t1".ID
FROM
	(
		SELECT
			CASE
				WHEN (Cast(@fullAccess as CHAR) = 1 OR EXISTS(
					SELECT
						*
					FROM
						VEMPLOYEE_SCHDL_PERM "y"
					WHERE
						"ess".ID = "y".ID AND "y".IS_ACTIVE = 1
				))
					THEN 1
				ELSE 0
			END as "allowEdit",
			"ess".ID
		FROM
			VEMPLOYEE_SCH_SEC "ess"
	) "t1"
WHERE
	"t1"."allowEdit" = 1 AND "t1"."allowEdit" IS NOT NULL

BeforeExecute
-- Firebird4 Firebird
DECLARE @fullAccess Char(1) -- String
SET     @fullAccess = '1'

SELECT
	"t1".ID
FROM
	(
		SELECT
			CASE
				WHEN (Cast(@fullAccess as CHAR) = 1 OR EXISTS(
					SELECT
						*
					FROM
						VEMPLOYEE_SCHDL_PERM "y"
					WHERE
						"ess".ID = "y".ID AND "y".IS_ACTIVE = 1
				))
					THEN 1
				ELSE 0
			END as "allowEdit",
			"ess".ID
		FROM
			VEMPLOYEE_SCH_SEC "ess"
	) "t1"
WHERE
	"t1"."allowEdit" = 1 AND "t1"."allowEdit" IS NOT NULL

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

