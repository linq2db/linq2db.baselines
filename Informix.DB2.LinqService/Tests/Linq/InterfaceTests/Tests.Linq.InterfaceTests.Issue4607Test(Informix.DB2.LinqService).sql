BeforeExecute
-- Informix.DB2 Informix (asynchronously)

INSERT INTO SomeTable
(
	Id,
	ClassProp,
	Interface
)
VALUES
(
	1,
	't'::BOOLEAN,
	'f'::BOOLEAN
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 2
	t1.Id,
	t1.ClassProp,
	t1.Interface
FROM
	SomeTable t1

