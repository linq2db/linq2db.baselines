﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p_1.FirstName,
	p_1.ID,
	p_1.LastName,
	p_1.MiddleName,
	p_1.Gender
FROM
	(
		SELECT
			CASE
				WHEN position(p.FirstName, 'Jo') > 0 THEN true
				ELSE false
			END as Field1,
			p.FirstName as FirstName,
			p.PersonID as ID,
			p.LastName as LastName,
			p.MiddleName as MiddleName,
			p.Gender as Gender
		FROM
			Person p
	) p_1
WHERE
	p_1.Field1 = true
ORDER BY
	p_1.Field1

