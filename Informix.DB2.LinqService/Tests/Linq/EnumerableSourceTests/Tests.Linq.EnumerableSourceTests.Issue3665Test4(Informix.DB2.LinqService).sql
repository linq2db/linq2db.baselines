﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	x.PersonID,
	y.value__
FROM
	Person x
		CROSS JOIN (
			SELECT 1::Int AS value__ FROM table(set{1})
			UNION ALL
			SELECT 3::Int FROM table(set{1})) y

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

