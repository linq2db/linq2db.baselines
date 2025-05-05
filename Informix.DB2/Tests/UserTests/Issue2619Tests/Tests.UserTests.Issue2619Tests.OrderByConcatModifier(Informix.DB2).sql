﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 1
DECLARE @p Integer(4) -- Int32
SET     @p = 1

SELECT
	t2.FirstName,
	t2.ID,
	t2.LastName,
	t2.MiddleName,
	t2.Gender
FROM
	(
		SELECT FIRST @take
			t1.FirstName,
			t1.PersonID as ID,
			t1.LastName,
			t1.MiddleName,
			t1.Gender
		FROM
			Person t1
		ORDER BY
			t1.LastName
	) t2
UNION ALL
SELECT
	t4.FirstName,
	t4.ID,
	t4.LastName,
	t4.MiddleName,
	t4.Gender
FROM
	(
		SELECT FIRST @p
			t3.FirstName,
			t3.PersonID as ID,
			t3.LastName,
			t3.MiddleName,
			t3.Gender
		FROM
			Person t3
		ORDER BY
			t3.LastName
	) t4

