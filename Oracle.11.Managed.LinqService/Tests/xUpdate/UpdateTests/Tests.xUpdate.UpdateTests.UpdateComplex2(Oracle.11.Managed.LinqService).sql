BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @Gender Varchar2(1) -- String
SET     @Gender = 'M'
DECLARE @Name_FirstName Varchar2(13) -- String
SET     @Name_FirstName = 'UpdateComplex'
DECLARE @Name_MiddleName Varchar2 -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName Varchar2(5) -- String
SET     @Name_LastName = 'Empty'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

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
RETURNING 
	"PersonID" INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

UPDATE
	"Person" t1
SET
	"LastName" = t1."FirstName"
WHERE
	t1."FirstName" LIKE 'UpdateComplex%' ESCAPE '~'

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @id Int32
SET     @id = 5

SELECT
	t1."PersonID",
	t1."Gender",
	t1."FirstName",
	t1."MiddleName",
	t1."LastName"
FROM
	"Person" t1
WHERE
	t1."PersonID" = :id AND ROWNUM <= 1

