-- PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.13 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"InheritInsertParent" t1

