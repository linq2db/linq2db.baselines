-- Informix.DB2 Informix

INSERT INTO DateTimeTestTable
(
	DateTimeField
)
VALUES
(
	TO_DATE('2134-05-21 13:45:43.12345', '%Y-%m-%d %H:%M:%S.%F5')
)

-- Informix.DB2 Informix

SELECT FIRST 2
	t1.DateTimeField
FROM
	DateTimeTestTable t1

