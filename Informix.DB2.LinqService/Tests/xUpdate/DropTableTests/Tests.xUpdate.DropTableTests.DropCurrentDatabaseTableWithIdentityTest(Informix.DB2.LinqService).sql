BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DropTableTestID

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE DropTableTestID
(
	ID  SERIAL  NOT NULL,
	ID1 Int     NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO DropTableTestID
(
	ID1
)
VALUES
(
	2
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.ID,
	t.ID1
FROM
	DropTableTestID t

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE DropTableTestID

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ID,
	t1.ID1
FROM
	DropTableTestID t1

