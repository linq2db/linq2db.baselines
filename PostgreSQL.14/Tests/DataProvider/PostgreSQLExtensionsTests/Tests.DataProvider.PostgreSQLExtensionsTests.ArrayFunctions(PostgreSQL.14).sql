-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @arr -2147483639 -- Object
SET     @arr = {1,2,3}

SELECT
	t1."StrArray" || t2."StrArray",
	t1."StrArray" || t2."StrArray" || t1."StrArray",
	CASE
		WHEN t1."StrArray" < t2."StrArray" THEN True
		ELSE False
	END,
	CASE
		WHEN t1."StrArray" <= t2."StrArray" THEN True
		ELSE False
	END,
	CASE
		WHEN t1."StrArray" > t2."StrArray" THEN True
		ELSE False
	END,
	CASE
		WHEN t1."StrArray" >= t2."StrArray" THEN True
		ELSE False
	END,
	CASE
		WHEN t1."StrArray" @> t2."StrArray" THEN True
		ELSE False
	END,
	CASE
		WHEN t1."StrArray" <@ t2."StrArray" THEN True
		ELSE False
	END,
	CASE
		WHEN t1."StrArray" && t2."StrArray" THEN True
		ELSE False
	END,
	CASE
		WHEN t1."IntValue" = ANY(t2."IntArray") THEN True
		ELSE False
	END,
	CASE
		WHEN t1."IntValue" < ANY(t2."IntArray") THEN True
		ELSE False
	END,
	CASE
		WHEN t1."IntValue" <= ANY(t2."IntArray") THEN True
		ELSE False
	END,
	CASE
		WHEN t1."IntValue" > ANY(t2."IntArray") THEN True
		ELSE False
	END,
	CASE
		WHEN t1."IntValue" >= ANY(t2."IntArray") THEN True
		ELSE False
	END,
	CASE
		WHEN t1."IntValue" <> ANY(t2."IntArray") THEN True
		ELSE False
	END,
	ARRAY_APPEND(t1."StrArray", t2."StrValue"),
	ARRAY_APPEND(t1."IntArray", t2."Id"),
	ARRAY_APPEND(t1."LongArray", t2."LongValue"),
	ARRAY_APPEND(t1."LongArray", (t2."IntValue" + 2)::BigInt),
	ARRAY_APPEND(t1."DoubleArray", t2."DoubleValue"),
	ARRAY_APPEND(t1."DecimalArray", t2."DecimalValue"),
	ARRAY_CAT(t1."StrArray", t2."StrArray"),
	ARRAY_NDIMS(t1."StrArray"),
	ARRAY_DIMS(t1."StrArray"),
	ARRAY_LENGTH(t1."StrArray", 1),
	ARRAY_LOWER(t1."StrArray", 1),
	ARRAY_POSITION(t1."StrArray", t2."StrValue"),
	ARRAY_POSITION(t1."StrArray", t2."StrValue", 1),
	ARRAY_POSITIONS(t1."StrArray", t2."StrValue"),
	ARRAY_PREPEND(t2."StrValue", t1."StrArray"),
	ARRAY_REMOVE(t1."StrArray", t2."StrValue"),
	ARRAY_REPLACE(t1."StrArray", t2."StrValue", 'NN'),
	ARRAY_TO_STRING(t1."StrArray", ','),
	ARRAY_TO_STRING(t1."StrArray", ',', '*'),
	ARRAY_UPPER(t1."StrArray", 1),
	CARDINALITY(t1."StrArray"),
	STRING_TO_ARRAY('T1,T2,T3', ','),
	STRING_TO_ARRAY('T1,T2,T3', ',', 'T2')
FROM
	"SampleClass" t1
		INNER JOIN "SampleClass" t2 ON t2."Id" <> t1."Id"
WHERE
	t1."StrArray" > t2."StrArray" OR
	t1."StrArray" >= t2."StrArray" OR
	t1."StrArray" @> t2."StrArray" OR
	t1."StrArray" <@ t2."StrArray" OR
	t1."StrArray" && t2."StrArray" OR
	t1."IntValue" = ANY(t2."IntArray") OR
	t1."IntValue" < ANY(t2."IntArray") OR
	t1."IntValue" <= ANY(t2."IntArray") OR
	t1."IntValue" > ANY(t2."IntArray") OR
	t1."IntValue" >= ANY(t2."IntArray") OR
	t1."IntValue" <> ANY(t2."IntArray") OR
	t1."IntValue" = ANY(t2."IntArray") OR
	t1."IntValue" < ANY(t2."IntArray") OR
	t1."IntValue" <= ANY(t2."IntArray") OR
	t1."IntValue" > ANY(t2."IntArray") OR
	t1."IntValue" >= ANY(t2."IntArray") OR
	t1."IntValue" <> ANY(t2."IntArray") OR
	t1."IntValue" = ANY(:arr) OR
	t1."IntValue" < ANY(:arr) OR
	t1."IntValue" <= ANY(:arr) OR
	t1."IntValue" > ANY(:arr) OR
	t1."IntValue" >= ANY(:arr) OR
	t1."IntValue" <> ANY(:arr)

