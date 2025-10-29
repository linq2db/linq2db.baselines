-- Informix.DB2 Informix

INSERT INTO SomeTable
(
	ClassProp,
	Interface
)
VALUES
(
	't'::BOOLEAN,
	'f'::BOOLEAN
)

-- Informix.DB2 Informix

SELECT FIRST 2
	t1.ClassProp,
	t1.Interface
FROM
	SomeTable t1

