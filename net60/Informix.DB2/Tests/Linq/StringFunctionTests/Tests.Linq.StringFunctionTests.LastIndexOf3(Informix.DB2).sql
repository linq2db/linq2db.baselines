﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @Length Integer(4) -- Int32
SET     @Length = 9

SELECT
	p_1.ID,
	p_1.FirstName_1
FROM
	(
		SELECT
			'123' || p.FirstName || '0123451234' as FirstName,
			p.PersonID as ID,
			p.FirstName as FirstName_1
		FROM
			Person p
		WHERE
			p.PersonID = 1
	) p_1
WHERE
	CASE
		WHEN CharIndex('123', Substr(p_1.FirstName, 1, 11), 6) = 0
			THEN -1
		ELSE @Length - CharIndex('321', Reverse(Substr(p_1.FirstName, 6, 6)))
	END = 8

