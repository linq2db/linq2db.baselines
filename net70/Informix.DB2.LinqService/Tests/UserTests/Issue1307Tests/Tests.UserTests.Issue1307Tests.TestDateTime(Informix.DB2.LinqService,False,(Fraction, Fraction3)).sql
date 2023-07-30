BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DateTimeTestTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS DateTimeTestTable
(
	DateTimeField datetime Fraction to fraction(3) NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @input Timestamp(16) -- DateTime
SET     @input = TO_DATE('2134-05-21 13:45:43.12345', '%Y-%m-%d %H:%M:%S.%F5')

INSERT INTO DateTimeTestTable
(
	DateTimeField
)
VALUES
(
	@input
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

