BeforeExecute
-- SapHana.Native SapHana
DECLARE @FirstName NVarChar(8) -- String
SET     @FirstName = 'Update14'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
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
	:"FirstName",
	:"LastName",
	:"MiddleName",
	:"Gender"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @name NVarChar(8) -- String
SET     @name = 'Update14'
DECLARE @idx  -- Int32
SET     @idx = 4

UPDATE
	"Person"
SET
	"Person"."LastName" = Cast((Length(:"name") + :"idx") as NVarChar(11))
WHERE
	"Person"."FirstName" LIKE 'Update14%'

BeforeExecute
-- SapHana.Native SapHana

SELECT
	Count(*)
FROM
	"Person" "_"
WHERE
	"_"."FirstName" LIKE 'Update14%'

BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"Person" "_"
WHERE
	"_"."FirstName" LIKE 'Update14%'

