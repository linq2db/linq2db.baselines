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
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

DELETE FROM
	Issue681Table
WHERE
	Issue681Table.ID = @ID

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue681Table

