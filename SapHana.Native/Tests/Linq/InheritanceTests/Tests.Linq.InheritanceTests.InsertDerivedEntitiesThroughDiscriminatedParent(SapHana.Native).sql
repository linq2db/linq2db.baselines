-- SapHana.Native SapHana
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
	:"Type",
	:"StringValue"
)

-- SapHana.Native SapHana
DECLARE @Type NVarChar(23) -- String
SET     @Type = 'InheritanceInsertChildB'
DECLARE @IntValue Integer -- Int32
SET     @IntValue = 911

INSERT INTO "InheritInsertParent"
(
	"Type",
	"IntValue"
)
VALUES
(
	:"Type",
	:"IntValue"
)

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"InheritInsertParent" "t1"

