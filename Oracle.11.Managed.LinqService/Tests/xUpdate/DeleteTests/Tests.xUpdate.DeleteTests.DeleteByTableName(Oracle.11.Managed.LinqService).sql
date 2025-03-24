﻿BeforeExecute
--  Oracle.11.Managed Oracle11
DECLARE @FirstName Varchar2(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName Varchar2(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName Varchar2 -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO "xxPerson_ol"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	:FirstName,
	:LastName,
	:MiddleName,
	:Gender
)

BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"xxPerson_ol" t1

BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"xxPerson_ol" t1
WHERE
	ROWNUM <= 2

BeforeExecute
--  Oracle.11.Managed Oracle11
DECLARE @ID Int32
SET     @ID = 1

DELETE FROM
	"xxPerson_ol" t1
WHERE
	t1."PersonID" = :ID

BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"xxPerson_ol" t1

