-- Oracle.11.Managed Oracle11
DECLARE @FirstName Varchar2(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName Varchar2(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName Varchar2 -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO "xxPerson"
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

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"xxPerson" t1

-- Oracle.11.Managed Oracle11

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"xxPerson" t1
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
DECLARE @ID Int32
SET     @ID = 1

DELETE FROM
	"xxPerson" t1
WHERE
	t1."PersonID" = :ID

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"xxPerson" t1

