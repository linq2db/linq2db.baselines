﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.FirstName,
	r.PersonID,
	r.LastName,
	r.MiddleName,
	r.Gender
FROM
	Person r
WHERE
	endsWith(r.LastName, 'x') = true

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.FirstName,
	r.PersonID,
	r.LastName,
	r.MiddleName,
	r.Gender
FROM
	Person r
WHERE
	endsWith(r.LastName, 'x') = true

