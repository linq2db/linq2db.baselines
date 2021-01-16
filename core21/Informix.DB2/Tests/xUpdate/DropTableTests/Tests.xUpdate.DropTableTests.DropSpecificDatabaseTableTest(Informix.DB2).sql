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

INSERT INTO testdb:informix.DropTableTest
(
	ID
)
VALUES
(
	123
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE testdb:informix.DropTableTest

