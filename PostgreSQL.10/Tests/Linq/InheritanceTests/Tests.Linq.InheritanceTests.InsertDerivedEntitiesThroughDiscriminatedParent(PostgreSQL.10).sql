-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	COUNT(*)
FROM
	"InheritInsertParent" t1

