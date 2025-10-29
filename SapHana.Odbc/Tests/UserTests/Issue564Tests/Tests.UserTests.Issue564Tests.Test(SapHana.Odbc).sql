-- SapHana.Odbc SapHanaOdbc
DECLARE @Type NVarChar(9) -- String
SET     @Type = 'Child564A'
DECLARE @StringValue NVarChar(9) -- String
SET     @StringValue = 'SomeValue'

INSERT INTO "Parent564"
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
DECLARE @Type NVarChar(9) -- String
SET     @Type = 'Child564B'
DECLARE @IntValue Int -- Int32
SET     @IntValue = 911

INSERT INTO "Parent564"
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
	"Parent564" "t1"

