﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS SimpleBulkCopyTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS SimpleBulkCopyTable
(
	Id Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO SimpleBulkCopyTable
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS SimpleBulkCopyTable

