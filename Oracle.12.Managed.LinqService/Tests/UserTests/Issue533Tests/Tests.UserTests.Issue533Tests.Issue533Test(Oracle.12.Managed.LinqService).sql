BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

DROP SEQUENCE "PersonSeq"

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

CREATE SEQUENCE "PersonSeq" MINVALUE 1 START WITH 5

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @FirstName NVarchar2(12) -- String
SET     @FirstName = 'FirstName533'
DECLARE @MiddleName NVarchar2 -- String
SET     @MiddleName = NULL
DECLARE @LastName NVarchar2(11) -- String
SET     @LastName = 'LastName533'
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
	:FirstName,
	:MiddleName,
	:LastName
)
RETURNING 
	"PersonID" INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
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

