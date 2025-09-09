BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
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
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @id Int32
SET     @id = 5

SELECT
	t1."PersonID" as ID,
	t1."Gender",
	t1."FirstName",
	t1."MiddleName",
	t1."LastName"
FROM
	"Person" t1
WHERE
	t1."PersonID" = :id
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Gender Varchar2(1) -- String
SET     @Gender = 'M'
DECLARE @Name_FirstName Varchar2(13) -- String
SET     @Name_FirstName = 'UpdateComplex'
DECLARE @Name_MiddleName Varchar2 -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName Varchar2(13) -- String
SET     @Name_LastName = 'UpdateComplex'
DECLARE @ID Int32
SET     @ID = 5

UPDATE
	"Person" t1
SET
	"Gender" = :Gender,
	"FirstName" = :Name_FirstName,
	"MiddleName" = :Name_MiddleName,
	"LastName" = :Name_LastName
WHERE
	t1."PersonID" = :ID

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @id Int32
SET     @id = 5

SELECT
	t1."PersonID" as ID,
	t1."Gender",
	t1."FirstName",
	t1."MiddleName",
	t1."LastName"
FROM
	"Person" t1
WHERE
	t1."PersonID" = :id
FETCH NEXT 1 ROWS ONLY

