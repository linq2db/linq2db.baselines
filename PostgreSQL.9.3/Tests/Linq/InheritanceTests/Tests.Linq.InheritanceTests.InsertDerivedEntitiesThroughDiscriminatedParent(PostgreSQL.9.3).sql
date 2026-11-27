-- PostgreSQL.9.3 PostgreSQL
DECLARE @Type Text(23) -- String
SET     @Type = 'InheritanceInsertChildA'
DECLARE @StringValue Text(9) -- String
SET     @StringValue = 'SomeValue'

INSERT INTO "InheritInsertParent"
(
	"Type",
	"StringValue"
)
VALUES
(
	:Type,
	:StringValue
)

-- PostgreSQL.9.3 PostgreSQL
DECLARE @Type Text(23) -- String
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
	:Type,
	:IntValue
)

-- PostgreSQL.9.3 PostgreSQL
SELECT
	COUNT(*)
FROM
	"InheritInsertParent" t1

