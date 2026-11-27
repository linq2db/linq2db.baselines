-- DB2 DB2.LUW DB2LUW
DECLARE @Type VarChar(23) -- String
SET     @Type = 'InheritanceInsertChildA'
DECLARE @StringValue VarChar(9) -- String
SET     @StringValue = 'SomeValue'

INSERT INTO "InheritInsertParent"
(
	"Type",
	"StringValue"
)
VALUES
(
	@Type,
	@StringValue
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Type VarChar(23) -- String
SET     @Type = 'InheritanceInsertChildB'
DECLARE @IntValue Integer(4) -- Int32
SET     @IntValue = 911

INSERT INTO "InheritInsertParent"
(
	"Type",
	"IntValue"
)
VALUES
(
	@Type,
	@IntValue
)

-- DB2 DB2.LUW DB2LUW
SELECT
	COUNT(*)
FROM
	"InheritInsertParent" "t1"

