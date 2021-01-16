BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE DateTimeTestTable
(
	DateTimeField datetime Day to fraction(3) NOT NULL
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

DROP TABLE DateTimeTestTable

