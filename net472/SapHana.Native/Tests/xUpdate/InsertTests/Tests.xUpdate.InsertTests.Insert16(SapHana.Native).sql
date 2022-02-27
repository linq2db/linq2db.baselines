BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"Person" "_"
WHERE
	"_"."FirstName" LIKE 'Insert16%'

BeforeExecute
-- SapHana.Native SapHana
DECLARE @name NVarChar(8) -- String
SET     @name = 'Insert16'
DECLARE @idx  -- Int32
SET     @idx = 4

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'Insert16',
	Cast((Length(:"name") + :"idx") as NVarChar(11)),
	'M'
)

BeforeExecute
-- SapHana.Native SapHana

SELECT
	Count(*)
FROM
	"Person" "_"
WHERE
	"_"."FirstName" LIKE 'Insert16%'

BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"Person" "_"
WHERE
	"_"."FirstName" LIKE 'Insert16%'

