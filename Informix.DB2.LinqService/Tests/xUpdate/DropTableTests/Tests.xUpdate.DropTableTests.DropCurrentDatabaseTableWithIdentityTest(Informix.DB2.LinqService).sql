BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE IF EXISTS DropTableTestID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

CREATE TABLE DropTableTestID
(
	ID  SERIAL  NOT NULL,
	ID1 Int     NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

INSERT INTO DropTableTestID
(
	ID1
)
VALUES
(
	2
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t.ID,
	t.ID1
FROM
	DropTableTestID t

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE DropTableTestID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.ID,
	t1.ID1
FROM
	DropTableTestID t1

