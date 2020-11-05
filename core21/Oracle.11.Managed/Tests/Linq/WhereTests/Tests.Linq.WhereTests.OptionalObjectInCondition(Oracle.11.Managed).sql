﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FirstName Varchar2(1) -- String
SET     @FirstName = '1'

SELECT
	r.FirstName,
	r.PersonID,
	r.LastName,
	r.MiddleName,
	r.Gender
FROM
	Person r
WHERE
	r.FirstName = :FirstName

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	r.FirstName,
	r.PersonID,
	r.LastName,
	r.MiddleName,
	r.Gender
FROM
	Person r
WHERE
	r.FirstName IS NULL

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FirstName Varchar2(1) -- String
SET     @FirstName = '1'

SELECT
	r.FirstName,
	r.PersonID,
	r.LastName,
	r.MiddleName,
	r.Gender
FROM
	Person r
WHERE
	r.FirstName = :FirstName

