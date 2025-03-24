﻿BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 1
DECLARE @name VarChar(4) -- String
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
	("m_1"."PersonID" = @id AND "m_1"."LastName" <> @name OR "m_1"."FirstName" <> @name AND "m_1"."PersonID" - 1 = @id) AND
	("m_1"."PersonID" = @id AND "m_1"."LastName" <> @name OR "m_1"."FirstName" <> @name AND "m_1"."PersonID" - 1 = @id)

BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 1
DECLARE @name VarChar(4) -- String
SET     @name = 'test'

SELECT
	"x"."PersonID"
FROM
	"Person" "x"
WHERE
	"x"."PersonID" = @id AND "x"."LastName" <> @name OR
	"x"."FirstName" <> @name AND "x"."PersonID" - 1 = @id
GROUP BY
	"x"."PersonID"

