﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @param Varchar2(4) -- String
SET     @param = 'JOHN'

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	Lower(p.FirstName) = Lower(:param) AND p.PersonID = 1

