BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE VEMPLOYEE_SCH_SEC
(
	ACTIVE BOOLEAN       NOT NULL,
	ID     Int           NOT NULL,
	NAME   NVarChar(255) NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE VEMPLOYEE_SCHDL_PERM
(
	ID        Int     NOT NULL,
	IS_ACTIVE BOOLEAN NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ID
FROM
	(
		SELECT
			Cast(CASE
				WHEN EXISTS(
					SELECT
						*
					FROM
						VEMPLOYEE_SCHDL_PERM y
					WHERE
						ess.ID = y.ID AND y.IS_ACTIVE = 't'
				)
					THEN 't'
				ELSE 'f'
			END as BOOLEAN) as hasAdditionalPermissions,
			ess.ID
		FROM
			VEMPLOYEE_SCH_SEC ess
	) t1
WHERE
	t1.hasAdditionalPermissions = 't' AND t1.hasAdditionalPermissions IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS VEMPLOYEE_SCHDL_PERM

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS VEMPLOYEE_SCH_SEC

