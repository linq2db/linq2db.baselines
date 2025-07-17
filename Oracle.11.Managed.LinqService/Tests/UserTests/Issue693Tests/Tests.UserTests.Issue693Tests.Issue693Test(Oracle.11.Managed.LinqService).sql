BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Gender Varchar2(1) -- String
SET     @Gender = 'M'
DECLARE @FirstName Varchar2(1) -- String
SET     @FirstName = 'a'
DECLARE @MiddleName NVarchar2(1) -- String
SET     @MiddleName = 'A'
DECLARE @LastName Varchar2(1) -- String
SET     @LastName = 'b'
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
-- Oracle.11.Managed Oracle11
DECLARE @Gender Varchar2(1) -- String
SET     @Gender = 'M'
DECLARE @FirstName Varchar2(1) -- String
SET     @FirstName = 'c'
DECLARE @MiddleName Varchar2 -- String
SET     @MiddleName = NULL
DECLARE @LastName Varchar2(1) -- String
SET     @LastName = 'd'
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
-- Oracle.11.Managed Oracle11
DECLARE @id1 Int32
SET     @id1 = 5

SELECT
	t1."PersonID",
	t1."Gender",
	t1."FirstName",
	t1."MiddleName",
	t1."LastName"
FROM
	"Person" t1
WHERE
	t1."PersonID" = :id1 AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @id2 Int32
SET     @id2 = 6

SELECT
	t1."PersonID",
	t1."Gender",
	t1."FirstName",
	t1."MiddleName",
	t1."LastName"
FROM
	"Person" t1
WHERE
	t1."PersonID" = :id2 AND ROWNUM <= 1

