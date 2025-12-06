-- Informix.DB2 Informix

DROP TABLE IF EXISTS DropTableTestID

-- Informix.DB2 Informix

CREATE TABLE DropTableTestID
(
	ID  SERIAL  NOT NULL,
	ID1 Int     NOT NULL,

	PRIMARY KEY (ID)
)

-- Informix.DB2 Informix

INSERT INTO DropTableTestID
(
	ID1
)
VALUES
(
	2
)

-- Informix.DB2 Informix

SELECT
	t.ID,
	t.ID1
FROM
	DropTableTestID t

-- Informix.DB2 Informix

DROP TABLE DropTableTestID

-- Informix.DB2 Informix

SELECT
	t1.ID,
	t1.ID1
FROM
	DropTableTestID t1

