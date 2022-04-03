BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DropTableTest

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE DropTableTest
(
	ID Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO DropTableTest
(
	ID
)
VALUES
(
	123
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ID
FROM
	DropTableTest t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE DropTableTest

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ID
FROM
	DropTableTest t1

