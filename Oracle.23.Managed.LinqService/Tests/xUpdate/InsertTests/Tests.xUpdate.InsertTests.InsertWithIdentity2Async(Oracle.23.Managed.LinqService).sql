BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @FirstName Varchar2(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName Varchar2(7) -- String
SET     @LastName = 'Shepard'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	:FirstName,
	:LastName,
	:Gender
)
RETURNING 
	"PersonID" INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > 4

