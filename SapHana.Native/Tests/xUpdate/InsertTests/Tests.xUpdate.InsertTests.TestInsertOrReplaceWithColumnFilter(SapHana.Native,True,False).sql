-- SapHana.Native SapHana
DECLARE @ID Integer -- Int32
SET     @ID = 0
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName NVarChar(15) -- String
SET     @MiddleName = 'som middle name'

UPSERT "TestInsertOrReplaceTable"
(
	"ID",
	"FirstName",
	"LastName",
	"MiddleName"
)
VALUES
(
	:"ID",
	:"FirstName",
	:"LastName",
	:"MiddleName"
)
WITH PRIMARY KEY

-- SapHana.Native SapHana
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'

SELECT
	"x"."ID",
	"x"."FirstName",
	"x"."LastName",
	"x"."MiddleName"
FROM
	"TestInsertOrReplaceTable" "x"
WHERE
	"x"."FirstName" = :"FirstName"
LIMIT 1

-- SapHana.Native SapHana
DECLARE @ID Integer -- Int32
SET     @ID = 0
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName NVarChar(12) -- String
SET     @MiddleName = 'updated name'

UPSERT "TestInsertOrReplaceTable"
(
	"ID",
	"FirstName",
	"LastName",
	"MiddleName"
)
VALUES
(
	:"ID",
	:"FirstName",
	:"LastName",
	:"MiddleName"
)
WITH PRIMARY KEY

-- SapHana.Native SapHana
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'

SELECT
	"x"."ID",
	"x"."FirstName",
	"x"."LastName",
	"x"."MiddleName"
FROM
	"TestInsertOrReplaceTable" "x"
WHERE
	"x"."FirstName" = :"FirstName"
LIMIT 1

