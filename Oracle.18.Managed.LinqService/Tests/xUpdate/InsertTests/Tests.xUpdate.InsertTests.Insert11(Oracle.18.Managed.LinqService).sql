BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	MAX(t1."PersonID")
FROM
	"Person" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Gender Varchar2(1) -- String
SET     @Gender = 'M'
DECLARE @Name_FirstName Varchar2(2) -- String
SET     @Name_FirstName = 'fn'
DECLARE @Name_MiddleName Varchar2 -- String
SET     @Name_MiddleName = NULL
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

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 4

SELECT
	p2."PersonID" as ID,
	p2."Gender",
	p2."FirstName",
	p2."MiddleName",
	p2."LastName"
FROM
	"Person" p2
WHERE
	p2."PersonID" > :id OR p2."PersonID" = 0
FETCH NEXT 2 ROWS ONLY

