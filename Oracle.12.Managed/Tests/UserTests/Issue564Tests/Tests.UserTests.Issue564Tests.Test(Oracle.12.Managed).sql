BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Type Varchar2(9) -- String
SET     @Type = 'Child564A'
DECLARE @StringValue Varchar2(9) -- String
SET     @StringValue = 'SomeValue'

INSERT INTO "Parent564"
(
	"Type",
	"StringValue"
)
VALUES
(
	:Type,
	:StringValue
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Type Varchar2(9) -- String
SET     @Type = 'Child564B'
DECLARE @IntValue Int32
SET     @IntValue = 911

INSERT INTO "Parent564"
(
	"Type",
	"IntValue"
)
VALUES
(
	:Type,
	:IntValue
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Parent564" t1

