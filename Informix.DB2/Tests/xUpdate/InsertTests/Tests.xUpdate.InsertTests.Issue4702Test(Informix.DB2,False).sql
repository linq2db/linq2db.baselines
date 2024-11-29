BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4702Table

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4702Table
(
	Id   SERIAL         NOT NULL,
	Text NVarChar(255)      NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT Max(Id) FROM Issue4702Table

BeforeExecute
INSERT BULK Issue4702Table

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO Issue4702Table
(
	Text
)
VALUES
(
	'Text 3'
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4702Table

