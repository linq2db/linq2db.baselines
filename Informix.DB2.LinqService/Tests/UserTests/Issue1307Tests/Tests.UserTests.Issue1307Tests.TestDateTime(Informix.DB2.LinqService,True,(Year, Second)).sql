﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DateTimeTestTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS DateTimeTestTable
(
	DateTimeField datetime Year to Second NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO DateTimeTestTable
(
	DateTimeField
)
VALUES
(
	TO_DATE('2134-05-21 13:45:43.12345', '%Y-%m-%d %H:%M:%S.%F5')
)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	t1.DateTimeField
FROM
	DateTimeTestTable t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DateTimeTestTable

