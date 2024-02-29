BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	Max(p."PersonID")
FROM
	"Person" p

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
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

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT
	p."PersonID",
	p."Gender",
	p."FirstName",
	p."MiddleName",
	p."LastName"
FROM
	"Person" p
WHERE
	p."PersonID" > 4
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

