-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @value Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	DECODE(s."Int", :value, 0, 1) = 1

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @value Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	DECODE(s."NullableInt", :value, 0, 1) = 1

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @value Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	DECODE(s."Int", :value, 0, 1) = 0

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @value Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	DECODE(s."NullableInt", :value, 0, 1) = 0

