﻿BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Person c_1
WHERE
	c_1.FirstName = 'John' AND c_1.LastName = 'The Dynamic'

