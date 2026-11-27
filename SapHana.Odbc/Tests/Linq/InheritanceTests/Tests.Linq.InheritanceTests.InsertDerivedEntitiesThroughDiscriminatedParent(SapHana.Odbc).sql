-- SapHana.Odbc SapHanaOdbc
DECLARE @Type NVarChar(23) -- String
SET     @Type = 'InheritanceInsertChildA'
DECLARE @StringValue NVarChar(9) -- String
SET     @StringValue = 'SomeValue'

INSERT INTO "InheritInsertParent"
(
	"Type",
	"StringValue"
)
VALUES
(
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Type NVarChar(23) -- String
SET     @Type = 'InheritanceInsertChildB'
DECLARE @IntValue Int -- Int32
SET     @IntValue = 911

INSERT INTO "InheritInsertParent"
(
	"Type",
	"IntValue"
)
VALUES
(
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
SELECT
	COUNT(*)
FROM
	"InheritInsertParent" "t1"

