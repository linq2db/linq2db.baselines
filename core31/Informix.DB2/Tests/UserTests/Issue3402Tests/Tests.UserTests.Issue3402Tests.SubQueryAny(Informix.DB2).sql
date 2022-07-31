﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS VEMPLOYEE_SCH_SEC

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS VEMPLOYEE_SCH_SEC
(
	ACTIVE BOOLEAN       NOT NULL,
	ID     Int           NOT NULL,
	NAME   NVarChar(255) NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS VEMPLOYEE_SCHDL_PERM

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS VEMPLOYEE_SCHDL_PERM
(
	ID        Int     NOT NULL,
	IS_ACTIVE BOOLEAN NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	ess.ID
FROM
	VEMPLOYEE_SCH_SEC ess
WHERE
	(EXISTS(
		SELECT
			*
		FROM
			VEMPLOYEE_SCHDL_PERM y
		WHERE
			ess.ID = y.ID AND y.IS_ACTIVE = 't'
	))

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS VEMPLOYEE_SCHDL_PERM

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS VEMPLOYEE_SCH_SEC

