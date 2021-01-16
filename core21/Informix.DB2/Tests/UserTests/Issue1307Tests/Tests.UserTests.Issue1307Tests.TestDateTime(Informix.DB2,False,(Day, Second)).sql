BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE DateTimeTestTable
(
	DateTimeField datetime Day to Second NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @input_1 Timestamp(16) -- DateTime
SET     @input_1 = TO_DATE('2134-05-21 13:45:43.12345', '%Y-%m-%d %H:%M:%S.%F5')

INSERT INTO DateTimeTestTable
(
	DateTimeField
)
VALUES
(
	@input_1
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE DateTimeTestTable

