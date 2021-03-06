﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SampleClass"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "SampleClass"
(
	"Id"           Int                NOT NULL,
	"StrValue"     text                   NULL,
	"IntValue"     Int                NOT NULL,
	"LongValue"    BigInt             NOT NULL,
	"DoubleValue"  Float              NOT NULL,
	"DecimalValue" decimal            NOT NULL,
	"StrArray"     text[]                 NULL,
	"IntArray"     int[]                  NULL,
	"LongArray"    bigint[]               NULL,
	"DoubleArray"  double precision[]     NULL,
	"DecimalArray" numeric[]              NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p1 -2147483629 -- Object
SET     @p1 = System.String[]
DECLARE @p2 -2147483639 -- Object
SET     @p2 = System.Int32[]
DECLARE @p3 -2147483647 -- Object
SET     @p3 = System.Int64[]
DECLARE @p4 -2147483640 -- Object
SET     @p4 = System.Double[]
DECLARE @p5 -2147483635 -- Object
SET     @p5 = System.Decimal[]
DECLARE @p6 -2147483629 -- Object
SET     @p6 = System.String[]
DECLARE @p7 -2147483639 -- Object
SET     @p7 = System.Int32[]
DECLARE @p8 -2147483647 -- Object
SET     @p8 = System.Int64[]
DECLARE @p9 -2147483640 -- Object
SET     @p9 = System.Double[]
DECLARE @p10 -2147483635 -- Object
SET     @p10 = System.Decimal[]
DECLARE @p11 -2147483629 -- Object
SET     @p11 = System.String[]
DECLARE @p12 -2147483639 -- Object
SET     @p12 = System.Int32[]
DECLARE @p13 -2147483647 -- Object
SET     @p13 = System.Int64[]
DECLARE @p14 -2147483640 -- Object
SET     @p14 = System.Double[]
DECLARE @p15 -2147483635 -- Object
SET     @p15 = System.Decimal[]
DECLARE @p16 -2147483629 -- Object
SET     @p16 = System.String[]
DECLARE @p17 -2147483639 -- Object
SET     @p17 = System.Int32[]
DECLARE @p18 -2147483647 -- Object
SET     @p18 = System.Int64[]
DECLARE @p19 -2147483640 -- Object
SET     @p19 = System.Double[]
DECLARE @p20 -2147483635 -- Object
SET     @p20 = System.Decimal[]
DECLARE @p21 -2147483629 -- Object
SET     @p21 = System.String[]
DECLARE @p22 -2147483639 -- Object
SET     @p22 = System.Int32[]
DECLARE @p23 -2147483647 -- Object
SET     @p23 = System.Int64[]
DECLARE @p24 -2147483640 -- Object
SET     @p24 = System.Double[]
DECLARE @p25 -2147483635 -- Object
SET     @p25 = System.Decimal[]
DECLARE @p26 -2147483629 -- Object
SET     @p26 = System.String[]
DECLARE @p27 -2147483639 -- Object
SET     @p27 = System.Int32[]
DECLARE @p28 -2147483647 -- Object
SET     @p28 = System.Int64[]
DECLARE @p29 -2147483640 -- Object
SET     @p29 = System.Double[]
DECLARE @p30 -2147483635 -- Object
SET     @p30 = System.Decimal[]
DECLARE @p31 -2147483629 -- Object
SET     @p31 = System.String[]
DECLARE @p32 -2147483639 -- Object
SET     @p32 = System.Int32[]
DECLARE @p33 -2147483647 -- Object
SET     @p33 = System.Int64[]
DECLARE @p34 -2147483640 -- Object
SET     @p34 = System.Double[]
DECLARE @p35 -2147483635 -- Object
SET     @p35 = System.Decimal[]
DECLARE @p36 -2147483629 -- Object
SET     @p36 = System.String[]
DECLARE @p37 -2147483639 -- Object
SET     @p37 = System.Int32[]
DECLARE @p38 -2147483647 -- Object
SET     @p38 = System.Int64[]
DECLARE @p39 -2147483640 -- Object
SET     @p39 = System.Double[]
DECLARE @p40 -2147483635 -- Object
SET     @p40 = System.Decimal[]
DECLARE @p41 -2147483629 -- Object
SET     @p41 = System.String[]
DECLARE @p42 -2147483639 -- Object
SET     @p42 = System.Int32[]
DECLARE @p43 -2147483647 -- Object
SET     @p43 = System.Int64[]
DECLARE @p44 -2147483640 -- Object
SET     @p44 = System.Double[]
DECLARE @p45 -2147483635 -- Object
SET     @p45 = System.Decimal[]
DECLARE @p46 -2147483629 -- Object
SET     @p46 = System.String[]
DECLARE @p47 -2147483639 -- Object
SET     @p47 = System.Int32[]
DECLARE @p48 -2147483647 -- Object
SET     @p48 = System.Int64[]
DECLARE @p49 -2147483640 -- Object
SET     @p49 = System.Double[]
DECLARE @p50 -2147483635 -- Object
SET     @p50 = System.Decimal[]

INSERT INTO "SampleClass"
(
	"Id",
	"StrValue",
	"IntValue",
	"LongValue",
	"DoubleValue",
	"DecimalValue",
	"StrArray",
	"IntArray",
	"LongArray",
	"DoubleArray",
	"DecimalArray"
)
VALUES
(1,'S1',1,1,1,1,:p1,:p2,:p3,:p4,:p5),
(2,'S2',2,2,2,2,:p6,:p7,:p8,:p9,:p10),
(3,'S3',3,3,3,3,:p11,:p12,:p13,:p14,:p15),
(4,'S4',4,4,4,4,:p16,:p17,:p18,:p19,:p20),
(5,'S5',5,5,5,5,:p21,:p22,:p23,:p24,:p25),
(6,'S6',6,6,6,6,:p26,:p27,:p28,:p29,:p30),
(7,'S7',7,7,7,7,:p31,:p32,:p33,:p34,:p35),
(8,'S8',8,8,8,8,:p36,:p37,:p38,:p39,:p40),
(9,'S9',9,9,9,9,:p41,:p42,:p43,:p44,:p45),
(10,'S10',10,10,10,10,:p46,:p47,:p48,:p49,:p50)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @arr -2147483639 -- Object
SET     @arr = System.Int32[]
DECLARE @arr_1 -2147483639 -- Object
SET     @arr_1 = System.Int32[]
DECLARE @arr_2 -2147483639 -- Object
SET     @arr_2 = System.Int32[]
DECLARE @arr_3 -2147483639 -- Object
SET     @arr_3 = System.Int32[]
DECLARE @arr_4 -2147483639 -- Object
SET     @arr_4 = System.Int32[]
DECLARE @arr_5 -2147483639 -- Object
SET     @arr_5 = System.Int32[]

SELECT
	t1."StrArray" || t2."StrArray",
	t1."StrArray" || t2."StrArray" || t1."StrArray",
	t1."StrArray" < t2."StrArray",
	t1."StrArray" <= t2."StrArray",
	t1."StrArray" > t2."StrArray",
	t1."StrArray" @> t2."StrArray",
	t1."StrArray" <@ t2."StrArray",
	t1."StrArray" && t2."StrArray",
	t1."IntValue" = ANY(t2."IntArray"),
	t1."IntValue" < ANY(t2."IntArray"),
	t1."IntValue" <= ANY(t2."IntArray"),
	t1."IntValue" > ANY(t2."IntArray"),
	t1."IntValue" >= ANY(t2."IntArray"),
	t1."IntValue" <> ANY(t2."IntArray"),
	ARRAY_APPEND(t1."StrArray", t2."StrValue"),
	ARRAY_APPEND(t1."IntArray", t2."Id"),
	ARRAY_APPEND(t1."LongArray", t2."LongValue"),
	ARRAY_APPEND(t1."LongArray", Cast((t2."IntValue" + 2) as BigInt)),
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
	(((((t1."StrArray" > t2."StrArray" OR t1."StrArray" > t2."StrArray") OR (t1."StrArray" @> t2."StrArray" OR t1."StrArray" <@ t2."StrArray")) OR ((t1."StrArray" && t2."StrArray" OR t1."IntValue" = ANY(t2."IntArray")) OR (t1."IntValue" < ANY(t2."IntArray") OR t1."IntValue" <= ANY(t2."IntArray")))) OR (((t1."IntValue" > ANY(t2."IntArray") OR t1."IntValue" >= ANY(t2."IntArray")) OR (t1."IntValue" <> ANY(t2."IntArray") OR t1."IntValue" = ANY(t2."IntArray"))) OR ((t1."IntValue" < ANY(t2."IntArray") OR t1."IntValue" <= ANY(t2."IntArray")) OR (t1."IntValue" > ANY(t2."IntArray") OR t1."IntValue" >= ANY(t2."IntArray"))))) OR (((t1."IntValue" <> ANY(t2."IntArray") OR t1."IntValue" = ANY(:arr)) OR (t1."IntValue" < ANY(:arr_1) OR t1."IntValue" <= ANY(:arr_2))) OR ((t1."IntValue" > ANY(:arr_3) OR t1."IntValue" >= ANY(:arr_4)) OR t1."IntValue" <> ANY(:arr_5))))

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SampleClass"

