﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS NestingA

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS NestingA
(
	Property1 NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS NestingB

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS NestingB
(
	Property1 NVarChar(255)     NULL,
	Property2 NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS NestingC

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS NestingC
(
	Property1 NVarChar(255)     NULL,
	Property2 NVarChar(255)     NULL,
	Property3 NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

WITH CTE_1 (Property1)
AS
(
	SELECT
		a.Property2
	FROM
		NestingC a
)
SELECT
	c2.Property1,
	t_1.Property2,
	t_1.Property3
FROM
	CTE_1 c2
		CROSS JOIN NestingC t
		CROSS JOIN NestingC t_1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS NestingC

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS NestingB

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS NestingA

