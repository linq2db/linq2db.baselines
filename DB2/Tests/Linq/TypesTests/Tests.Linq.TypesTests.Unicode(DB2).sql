BeforeExecute
BeginTransaction
BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = '擊敗奴隸'
DECLARE @LastName VarChar(9) -- String
SET     @LastName = 'Юникодкин'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = '擊敗奴隸' AND "p"."LastName" = 'Юникодкин'
FETCH NEXT 2 ROWS ONLY

