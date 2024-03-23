BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SampleClass"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @:p1 -2147483629 -- Object
SET     @:p1 = {'V01'}
DECLARE @:p2 -2147483639 -- Object
SET     @:p2 = {1}
DECLARE @:p3 -2147483647 -- Object
SET     @:p3 = {1}
DECLARE @:p4 -2147483640 -- Object
SET     @:p4 = {1}
DECLARE @:p5 -2147483635 -- Object
SET     @:p5 = {1}
DECLARE @:p6 -2147483629 -- Object
SET     @:p6 = {'V02','V03'}
DECLARE @:p7 -2147483639 -- Object
SET     @:p7 = {2,3}
DECLARE @:p8 -2147483647 -- Object
SET     @:p8 = {2,3}
DECLARE @:p9 -2147483640 -- Object
SET     @:p9 = {2,3}
DECLARE @:p10 -2147483635 -- Object
SET     @:p10 = {2,3}
DECLARE @:p11 -2147483629 -- Object
SET     @:p11 = {'V03','V04','V05'}
DECLARE @:p12 -2147483639 -- Object
SET     @:p12 = {3,4,5}
DECLARE @:p13 -2147483647 -- Object
SET     @:p13 = {3,4,5}
DECLARE @:p14 -2147483640 -- Object
SET     @:p14 = {3,4,5}
DECLARE @:p15 -2147483635 -- Object
SET     @:p15 = {3,4,5}
DECLARE @:p16 -2147483629 -- Object
SET     @:p16 = {'V04','V05','V06','V07'}
DECLARE @:p17 -2147483639 -- Object
SET     @:p17 = {4,5,6,7}
DECLARE @:p18 -2147483647 -- Object
SET     @:p18 = {4,5,6,7}
DECLARE @:p19 -2147483640 -- Object
SET     @:p19 = {4,5,6,7}
DECLARE @:p20 -2147483635 -- Object
SET     @:p20 = {4,5,6,7}
DECLARE @:p21 -2147483629 -- Object
SET     @:p21 = {'V05','V06','V07','V08','V09'}
DECLARE @:p22 -2147483639 -- Object
SET     @:p22 = {5,6,7,8,9}
DECLARE @:p23 -2147483647 -- Object
SET     @:p23 = {5,6,7,8,9}
DECLARE @:p24 -2147483640 -- Object
SET     @:p24 = {5,6,7,8,9}
DECLARE @:p25 -2147483635 -- Object
SET     @:p25 = {5,6,7,8,9}
DECLARE @:p26 -2147483629 -- Object
SET     @:p26 = {'V06','V07','V08','V09','V10','V11'}
DECLARE @:p27 -2147483639 -- Object
SET     @:p27 = {6,7,8,9,10,11}
DECLARE @:p28 -2147483647 -- Object
SET     @:p28 = {6,7,8,9,10,11}
DECLARE @:p29 -2147483640 -- Object
SET     @:p29 = {6,7,8,9,10,11}
DECLARE @:p30 -2147483635 -- Object
SET     @:p30 = {6,7,8,9,10,11}
DECLARE @:p31 -2147483629 -- Object
SET     @:p31 = {'V07','V08','V09','V10','V11','V12','V13'}
DECLARE @:p32 -2147483639 -- Object
SET     @:p32 = {7,8,9,10,11,12,13}
DECLARE @:p33 -2147483647 -- Object
SET     @:p33 = {7,8,9,10,11,12,13}
DECLARE @:p34 -2147483640 -- Object
SET     @:p34 = {7,8,9,10,11,12,13}
DECLARE @:p35 -2147483635 -- Object
SET     @:p35 = {7,8,9,10,11,12,13}
DECLARE @:p36 -2147483629 -- Object
SET     @:p36 = {'V08','V09','V10','V11','V12','V13','V14','V15'}
DECLARE @:p37 -2147483639 -- Object
SET     @:p37 = {8,9,10,11,12,13,14,15}
DECLARE @:p38 -2147483647 -- Object
SET     @:p38 = {8,9,10,11,12,13,14,15}
DECLARE @:p39 -2147483640 -- Object
SET     @:p39 = {8,9,10,11,12,13,14,15}
DECLARE @:p40 -2147483635 -- Object
SET     @:p40 = {8,9,10,11,12,13,14,15}
DECLARE @:p41 -2147483629 -- Object
SET     @:p41 = {'V09','V10','V11','V12','V13','V14','V15','V16'}
-- value above truncated for logging
DECLARE @:p42 -2147483639 -- Object
SET     @:p42 = {9,10,11,12,13,14,15,16}
-- value above truncated for logging
DECLARE @:p43 -2147483647 -- Object
SET     @:p43 = {9,10,11,12,13,14,15,16}
-- value above truncated for logging
DECLARE @:p44 -2147483640 -- Object
SET     @:p44 = {9,10,11,12,13,14,15,16}
-- value above truncated for logging
DECLARE @:p45 -2147483635 -- Object
SET     @:p45 = {9,10,11,12,13,14,15,16}
-- value above truncated for logging
DECLARE @:p46 -2147483629 -- Object
SET     @:p46 = {'V10','V11','V12','V13','V14','V15','V16','V17'}
-- value above truncated for logging
DECLARE @:p47 -2147483639 -- Object
SET     @:p47 = {10,11,12,13,14,15,16,17}
-- value above truncated for logging
DECLARE @:p48 -2147483647 -- Object
SET     @:p48 = {10,11,12,13,14,15,16,17}
-- value above truncated for logging
DECLARE @:p49 -2147483640 -- Object
SET     @:p49 = {10,11,12,13,14,15,16,17}
-- value above truncated for logging
DECLARE @:p50 -2147483635 -- Object
SET     @:p50 = {10,11,12,13,14,15,16,17}
-- value above truncated for logging

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
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id" / 3,
	ARRAY_AGG(v) OVER(PARTITION BY (t."Id" / 3), (t."Id" / 2)),
	ARRAY_AGG(v) OVER(PARTITION BY (t."Id" / 3), (t."Id" / 2)),
	ARRAY_AGG(ALL v) OVER(PARTITION BY (t."Id" / 3)),
	ARRAY_AGG(v) FILTER (WHERE (v LIKE 'V0%' ESCAPE '~')) OVER(PARTITION BY (t."Id" / 3)),
	ARRAY_AGG(ALL v) FILTER (WHERE (v LIKE 'V0%' ESCAPE '~')) OVER(PARTITION BY (t."Id" / 3)),
	ARRAY_AGG(ALL v) FILTER (WHERE (v LIKE 'V0%' ESCAPE '~')) OVER(PARTITION BY (t."Id" / 3) ORDER BY t."Id", (t."Id" - 1)),
	ROW_NUMBER() OVER(PARTITION BY (t."Id" / 3) ORDER BY t."Id")
FROM
	"SampleClass" t
		INNER JOIN LATERAL UNNEST(t."StrArray") v ON 1=1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SampleClass"

