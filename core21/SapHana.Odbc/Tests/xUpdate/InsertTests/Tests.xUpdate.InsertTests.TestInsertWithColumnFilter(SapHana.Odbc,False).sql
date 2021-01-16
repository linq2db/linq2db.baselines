﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @FirstName NVarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @LastName NVarChar(8) -- String
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
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @newName NVarChar(18) -- String
SET     @newName = 'InsertColumnFilter'

DELETE FROM
	"Person" "x"
WHERE
	"x"."FirstName" = ?

