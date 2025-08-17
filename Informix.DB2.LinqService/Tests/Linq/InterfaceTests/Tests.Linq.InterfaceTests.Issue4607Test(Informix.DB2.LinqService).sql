BeforeExecute
-- Informix.DB2 Informix (asynchronously)

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

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 2
	t1.ClassProp,
	t1.Interface
FROM
	SomeTable t1

