-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @LastName Varchar2(8) -- String
SET     @LastName = 'whatever'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

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

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(18) -- String
SET     @FirstName = 'InsertColumnFilter'

SELECT
	x."FirstName",
	x."PersonID" as ID,
	x."LastName",
	x."MiddleName",
	x."Gender"
FROM
	"Person" x
WHERE
	x."FirstName" = :FirstName
FETCH NEXT 1 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @newName Varchar2(18) -- String
SET     @newName = 'InsertColumnFilter'

DELETE FROM
	"Person" x
WHERE
	x."FirstName" = :newName

