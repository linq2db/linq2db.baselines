BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @name NVarChar(4) -- String
SET     @name = 'test'
DECLARE @name NVarChar(4) -- String
SET     @name = 'test'
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @name NVarChar(4) -- String
SET     @name = 'test'
DECLARE @name NVarChar(4) -- String
SET     @name = 'test'

SELECT
	"m_1"."PersonID",
	"m_1"."FirstName",
	"m_1"."PersonID",
	"m_1"."LastName",
	"m_1"."MiddleName",
	"m_1"."Gender"
FROM
	"Person" "m_1"
WHERE
	("m_1"."PersonID" = ? AND "m_1"."LastName" <> ? OR "m_1"."FirstName" <> ? AND "m_1"."PersonID" = 2) AND
	("m_1"."PersonID" = ? AND "m_1"."LastName" <> ? OR "m_1"."FirstName" <> ? AND "m_1"."PersonID" = 2)

BeforeExecute
DisposeTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @name NVarChar(4) -- String
SET     @name = 'test'
DECLARE @name NVarChar(4) -- String
SET     @name = 'test'

SELECT
	"x"."PersonID"
FROM
	"Person" "x"
WHERE
	("x"."PersonID" = ? AND "x"."LastName" <> ? OR "x"."FirstName" <> ? AND "x"."PersonID" = 2)
GROUP BY
	"x"."PersonID"

