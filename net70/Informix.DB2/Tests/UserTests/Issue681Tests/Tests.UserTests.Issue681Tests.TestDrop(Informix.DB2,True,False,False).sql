﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue681Table

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue681Table
(
	ID      Int NOT NULL,
	"Value" Int NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	DBSERVERNAME
FROM table(set{1})

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue681Table2

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Issue681Table2
(
	ID      Int NOT NULL,
	"Value" Int NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue681Table

