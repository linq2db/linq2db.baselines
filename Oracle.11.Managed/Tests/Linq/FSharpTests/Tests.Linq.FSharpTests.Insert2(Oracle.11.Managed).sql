-- Oracle.11.Managed Oracle11

SELECT
	MAX(t1."PersonID")
FROM
	"Person" t1

-- Oracle.11.Managed Oracle11
DECLARE @Gender Varchar2(1) -- String
SET     @Gender = 'M'
DECLARE @Name_FirstName Varchar2(2) -- String
SET     @Name_FirstName = 'fn'
DECLARE @Name_MiddleName Varchar2 -- String
SET     @Name_MiddleName = ''
DECLARE @Name_LastName Varchar2(2) -- String
SET     @Name_LastName = 'ln'

INSERT INTO "Person"
(
	"Gender",
	"FirstName",
	"MiddleName",
	"LastName"
)
VALUES
(
	:Gender,
	:Name_FirstName,
	:Name_MiddleName,
	:Name_LastName
)

-- Oracle.11.Managed Oracle11

SELECT
	p."PersonID",
	p."FirstName",
	p."MiddleName",
	p."LastName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" > 4 AND ROWNUM <= 2

-- Oracle.11.Managed Oracle11

DELETE FROM
	"Person" t
WHERE
	t."PersonID" > 4

