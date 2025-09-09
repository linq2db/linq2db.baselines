BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @value Varchar2(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	DECODE(s."String", :value, 0, 1) = 1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @value Varchar2(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	DECODE(s."NullableString", :value, 0, 1) = 1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @value Varchar2(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	DECODE(s."String", :value, 0, 1) = 0

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @value Varchar2(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	DECODE(s."NullableString", :value, 0, 1) = 0

