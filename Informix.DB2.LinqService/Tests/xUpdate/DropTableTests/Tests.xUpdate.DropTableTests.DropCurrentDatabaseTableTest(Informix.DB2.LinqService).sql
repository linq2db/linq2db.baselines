BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE IF EXISTS DropTableTest

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

CREATE TABLE DropTableTest
(
	ID Int NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

INSERT INTO DropTableTest
(
	ID
)
VALUES
(
	123
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.ID
FROM
	DropTableTest t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE DropTableTest

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.ID
FROM
	DropTableTest t1

