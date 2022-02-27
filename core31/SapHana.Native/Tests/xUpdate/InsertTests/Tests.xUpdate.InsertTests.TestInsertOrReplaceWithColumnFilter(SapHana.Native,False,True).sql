BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "TestInsertOrReplaceTable"
(
	"ID"         Integer       NOT NULL,
	"FirstName"  NVarChar(255)     NULL,
	"LastName"   NVarChar(255)     NULL,
	"MiddleName" NVarChar(255)     NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @ID_1  -- Int32
SET     @ID_1 = 0

UPDATE
	"TestInsertOrReplaceTable"
SET
	"TestInsertOrReplaceTable"."FirstName" = :"FirstName",
	"TestInsertOrReplaceTable"."LastName" = :"LastName"
WHERE
	"TestInsertOrReplaceTable"."ID" = :"ID_1"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @ID  -- Int32
SET     @ID = 0
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'

INSERT INTO "TestInsertOrReplaceTable"
(
	"ID",
	"FirstName",
	"LastName"
)
VALUES
(
	:"ID",
	:"FirstName",
	:"LastName"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @FirstName_1 NVarChar(27) -- String
SET     @FirstName_1 = 'InsertOrReplaceColumnFilter'
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"x"."ID",
	"x"."FirstName",
	"x"."LastName",
	"x"."MiddleName"
FROM
	"TestInsertOrReplaceTable" "x"
WHERE
	"x"."FirstName" = :"FirstName_1"
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName NVarChar(12) -- String
SET     @MiddleName = 'updated name'
DECLARE @ID_1  -- Int32
SET     @ID_1 = 0

UPDATE
	"TestInsertOrReplaceTable"
SET
	"TestInsertOrReplaceTable"."FirstName" = :"FirstName",
	"TestInsertOrReplaceTable"."LastName" = :"LastName",
	"TestInsertOrReplaceTable"."MiddleName" = :"MiddleName"
WHERE
	"TestInsertOrReplaceTable"."ID" = :"ID_1"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @FirstName_1 NVarChar(27) -- String
SET     @FirstName_1 = 'InsertOrReplaceColumnFilter'
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"x"."ID",
	"x"."FirstName",
	"x"."LastName",
	"x"."MiddleName"
FROM
	"TestInsertOrReplaceTable" "x"
WHERE
	"x"."FirstName" = :"FirstName_1"
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "TestInsertOrReplaceTable"

