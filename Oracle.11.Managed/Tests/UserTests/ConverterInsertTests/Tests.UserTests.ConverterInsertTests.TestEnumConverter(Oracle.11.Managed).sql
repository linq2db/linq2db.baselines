BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @FirstName NVarchar2(3) -- String
SET     @FirstName = '123'
DECLARE @LastName Varchar2(3) -- String
SET     @LastName = '456'
DECLARE @MiddleName Varchar2(3) -- String
SET     @MiddleName = '789'
DECLARE @Gender NVarchar2(1) -- String
SET     @Gender = 'M'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "Person"
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
RETURNING 
	"PersonID" INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 5

SELECT
	t."PersonID",
	t."FirstName",
	t."LastName",
	t."MiddleName",
	t."Gender"
FROM
	"Person" t
WHERE
	t."PersonID" = :id AND ROWNUM <= 1

