BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS MessageEventDTO

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS MessageEventDTO
(
	Id Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS MessageEventDTOTb2

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS MessageEventDTOTb2
(
	Id Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO MessageEventDTOTb2
(
	Id
)
SELECT
	x.Id
FROM
	MessageEventDTO x

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS MessageEventDTOTb2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS MessageEventDTO

