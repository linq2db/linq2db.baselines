-- YDB Ydb

SELECT
	r.Id as Id,
	r.Value1 = r.Value2 as Value11,
	r.Value1 <> r.Value2 as Value12,
	r.Value1 > r.Value2 as Value13,
	r.Value1 < r.Value2 as Value14,
	r.Value1 >= r.Value2 as Value15,
	r.Value1 <= r.Value2 as Value16,
	CASE
		WHEN r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL
			THEN true
		ELSE false
	END as Value21,
	CASE
		WHEN r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL
			THEN true
		ELSE false
	END as Value22,
	CASE
		WHEN r.Value4 > r.Value5 THEN true
		ELSE false
	END as Value23,
	CASE
		WHEN r.Value4 < r.Value5 THEN true
		ELSE false
	END as Value24,
	CASE
		WHEN r.Value4 >= r.Value5 THEN true
		ELSE false
	END as Value25,
	CASE
		WHEN r.Value4 <= r.Value5 THEN true
		ELSE false
	END as Value26,
	CASE
		WHEN r.Value1 = r.Value4 THEN true
		ELSE false
	END as Value31,
	r.Value1 <> r.Value4 OR r.Value4 IS NULL as Value32,
	CASE
		WHEN r.Value1 > r.Value4 THEN true
		ELSE false
	END as Value33,
	CASE
		WHEN r.Value1 < r.Value4 THEN true
		ELSE false
	END as Value34,
	CASE
		WHEN r.Value1 >= r.Value4 THEN true
		ELSE false
	END as Value35,
	CASE
		WHEN r.Value1 <= r.Value4 THEN true
		ELSE false
	END as Value36,
	CASE
		WHEN r.Value5 = r.Value2 THEN true
		ELSE false
	END as Value41,
	r.Value5 <> r.Value2 OR r.Value5 IS NULL as Value42,
	CASE
		WHEN r.Value5 > r.Value2 THEN true
		ELSE false
	END as Value43,
	CASE
		WHEN r.Value5 < r.Value2 THEN true
		ELSE false
	END as Value44,
	CASE
		WHEN r.Value5 >= r.Value2 THEN true
		ELSE false
	END as Value45,
	CASE
		WHEN r.Value5 <= r.Value2 THEN true
		ELSE false
	END as Value46
FROM
	BooleanTable r
WHERE
	r.Id <> -1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

