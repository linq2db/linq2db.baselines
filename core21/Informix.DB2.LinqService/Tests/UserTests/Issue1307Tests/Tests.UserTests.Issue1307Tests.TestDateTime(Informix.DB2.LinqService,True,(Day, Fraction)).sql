BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE DateTimeTestTable
(
	DateTimeField datetime Day to Fraction NOT NULL
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

DROP TABLE DateTimeTestTable

