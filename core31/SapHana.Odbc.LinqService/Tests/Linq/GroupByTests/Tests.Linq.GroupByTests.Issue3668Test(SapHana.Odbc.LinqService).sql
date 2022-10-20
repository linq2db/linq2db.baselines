BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @name NVarChar(4) -- String
SET     @name = 'test'
DECLARE @name_1 NVarChar(4) -- String
SET     @name_1 = 'test'
DECLARE @id_1  -- Int32
SET     @id_1 = 2

SELECT
	"x"."PersonID"
FROM
	"Person" "x"
WHERE
	("x"."PersonID" = ? AND "x"."LastName" <> ? OR "x"."FirstName" <> ? AND "x"."PersonID" = ?)
GROUP BY
	"x"."PersonID"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'test'
DECLARE @LastName_1 NVarChar(4) -- String
SET     @LastName_1 = 'test'
DECLARE @p_1  -- Int32
SET     @p_1 = 2
DECLARE @ID_1  -- Int32
SET     @ID_1 = 1

SELECT
	"x"."FirstName",
	"x"."PersonID",
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender"
FROM
	"Person" "x"
WHERE
	("x"."PersonID" = ? AND "x"."LastName" <> ? OR "x"."FirstName" <> ? AND "x"."PersonID" = ?) AND
	"x"."PersonID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'test'
DECLARE @LastName_1 NVarChar(4) -- String
SET     @LastName_1 = 'test'
DECLARE @p_1  -- Int32
SET     @p_1 = 2
DECLARE @ID_1  -- Int32
SET     @ID_1 = 2

SELECT
	"x"."FirstName",
	"x"."PersonID",
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender"
FROM
	"Person" "x"
WHERE
	("x"."PersonID" = ? AND "x"."LastName" <> ? OR "x"."FirstName" <> ? AND "x"."PersonID" = ?) AND
	"x"."PersonID" = ?

