﻿BeforeExecute
--  Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName Varchar2(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName Varchar2 -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO "xxPerson_o"
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
--  Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"xxPerson_o" t1

BeforeExecute
--  Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."FirstName",
	t1."PersonID" as ID,
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"xxPerson_o" t1
FETCH NEXT 2 ROWS ONLY

BeforeExecute
--  Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 1

DELETE FROM
	"xxPerson_o" t1
WHERE
	t1."PersonID" = :ID

BeforeExecute
--  Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"xxPerson_o" t1

