BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @value Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	DECODE(s."Int", :value, 0, 1) = 1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @value Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	DECODE(s."NullableInt", :value, 0, 1) = 1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @value Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	DECODE(s."Int", :value, 0, 1) = 0

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @value Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	DECODE(s."NullableInt", :value, 0, 1) = 0

