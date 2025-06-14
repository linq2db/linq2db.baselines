BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Id,
	x.StringProp = '1' OR x.StringProp IS NULL,
	CASE
		WHEN x.StringProp = '2' THEN true
		ELSE false
	END,
	x.StringProp,
	1,
	concat(x.StringProp, '2'),
	2
FROM
	ConditionalData x
WHERE
	endsWith(CASE
		WHEN x.StringProp = '1' OR x.StringProp IS NULL THEN '2'
		WHEN x.StringProp = '2' THEN x.StringProp
		ELSE concat(x.StringProp, '2')
	END, '2') AND
	CASE
		WHEN x.StringProp = '1' OR x.StringProp IS NULL THEN NULL
		WHEN x.StringProp = '2' THEN 1
		ELSE 2
	END = 2

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.StringProp
FROM
	ConditionalData t1

