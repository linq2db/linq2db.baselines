-- Firebird.4 Firebird4
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

-- Firebird.4 Firebird4
DECLARE @Type VarChar(23) -- String
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
	@Type,
	@IntValue
)

-- Firebird.4 Firebird4
SELECT
	COUNT(*)
FROM
	"InheritInsertParent" "t1"

