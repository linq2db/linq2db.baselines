-- SapHana.Native SapHana
DECLARE @Gender NVarChar(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @FirstName NVarChar(1) -- String
SET     @FirstName = 'a'
DECLARE @MiddleName NVarChar(1) -- String
SET     @MiddleName = 'A'
DECLARE @LastName NVarChar(1) -- String
SET     @LastName = 'b'

INSERT INTO "Person"
(
	"Gender",
	"FirstName",
	"MiddleName",
	"LastName"
)
VALUES
(
	:"Gender",
	:"FirstName",
	:"MiddleName",
	:"LastName"
)

-- SapHana.Native SapHana
SELECT CURRENT_IDENTITY_VALUE() FROM DUMMY

-- SapHana.Native SapHana
DECLARE @Gender NVarChar(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @FirstName NVarChar(1) -- String
SET     @FirstName = 'c'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @LastName NVarChar(1) -- String
SET     @LastName = 'd'

INSERT INTO "Person"
(
	"Gender",
	"FirstName",
	"MiddleName",
	"LastName"
)
VALUES
(
	:"Gender",
	:"FirstName",
	:"MiddleName",
	:"LastName"
)

-- SapHana.Native SapHana
SELECT CURRENT_IDENTITY_VALUE() FROM DUMMY

-- SapHana.Native SapHana
DECLARE @id1 Integer -- Int32
SET     @id1 = 5

SELECT
	"t1"."PersonID",
	"t1"."Gender",
	"t1"."FirstName",
	"t1"."MiddleName",
	"t1"."LastName"
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = :"id1"
LIMIT 1

-- SapHana.Native SapHana
DECLARE @id2 Integer -- Int32
SET     @id2 = 6

SELECT
	"t1"."PersonID",
	"t1"."Gender",
	"t1"."FirstName",
	"t1"."MiddleName",
	"t1"."LastName"
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = :"id2"
LIMIT 1

