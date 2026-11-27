-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Type Varchar2(23) -- String
SET     @Type = 'InheritanceInsertChildA'
DECLARE @StringValue Varchar2(9) -- String
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

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Type Varchar2(23) -- String
SET     @Type = 'InheritanceInsertChildB'
DECLARE @IntValue Int32
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

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	"InheritInsertParent" t1

