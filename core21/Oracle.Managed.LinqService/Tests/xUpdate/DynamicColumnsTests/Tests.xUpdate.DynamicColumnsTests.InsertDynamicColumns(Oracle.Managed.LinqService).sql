BeforeExecute
-- Oracle.Managed Oracle12

INSERT INTO Person
(
	FirstName,
	LastName,
	Gender
)
VALUES
(
	'John',
	'The Dynamic',
	'M'
)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	Person c_1
WHERE
	c_1.FirstName = 'John' AND c_1.LastName = 'The Dynamic'

BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	Person t1
WHERE
	t1.LastName = 'The Dynamic'

