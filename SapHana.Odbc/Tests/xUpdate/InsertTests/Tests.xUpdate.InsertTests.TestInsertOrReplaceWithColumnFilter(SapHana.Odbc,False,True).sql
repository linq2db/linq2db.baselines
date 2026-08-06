-- SapHana.Odbc SapHanaOdbc
DECLARE @ID Int -- Int32
SET     @ID = 0
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'

UPSERT "TestInsertOrReplaceTable"
(
	"ID",
	"FirstName",
	"LastName"
)
VALUES
(
	?,
	?,
	?
)
WITH PRIMARY KEY

-- SapHana.Odbc SapHanaOdbc
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
	"x"."FirstName" = ?
LIMIT 1

-- SapHana.Odbc SapHanaOdbc
DECLARE @ID Int -- Int32
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
	?,
	?,
	?,
	?
)
WITH PRIMARY KEY

-- SapHana.Odbc SapHanaOdbc
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
	"x"."FirstName" = ?
LIMIT 1

