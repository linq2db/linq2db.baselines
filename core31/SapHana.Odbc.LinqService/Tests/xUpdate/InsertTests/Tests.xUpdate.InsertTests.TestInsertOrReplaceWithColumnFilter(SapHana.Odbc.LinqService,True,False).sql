﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TestInsertOrReplaceTable"
(
	"ID"         Integer       NOT NULL,
	"FirstName"  NVarChar(255)     NULL,
	"LastName"   NVarChar(255)     NULL,
	"MiddleName" NVarChar(255)     NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName NVarChar(15) -- String
SET     @MiddleName = 'som middle name'
DECLARE @ID  -- Int32
SET     @ID = 0

UPDATE
	"TestInsertOrReplaceTable"
SET
	"TestInsertOrReplaceTable"."FirstName" = ?,
	"TestInsertOrReplaceTable"."LastName" = ?,
	"TestInsertOrReplaceTable"."MiddleName" = ?
WHERE
	"TestInsertOrReplaceTable"."ID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 0
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName NVarChar(15) -- String
SET     @MiddleName = 'som middle name'

INSERT INTO "TestInsertOrReplaceTable"
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

BeforeExecute
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

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName NVarChar(12) -- String
SET     @MiddleName = 'updated name'
DECLARE @ID  -- Int32
SET     @ID = 0

UPDATE
	"TestInsertOrReplaceTable"
SET
	"TestInsertOrReplaceTable"."FirstName" = ?,
	"TestInsertOrReplaceTable"."LastName" = ?,
	"TestInsertOrReplaceTable"."MiddleName" = ?
WHERE
	"TestInsertOrReplaceTable"."ID" = ?

BeforeExecute
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

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestInsertOrReplaceTable"

