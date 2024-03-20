﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "OptimizationData"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "OptimizationData"
(
	"Id"                  Int     NOT NULL,
	"IntVlaue"            Int     NOT NULL,
	"IntVlaueNullable"    Int         NULL,
	"BoolValue"           Boolean NOT NULL,
	"BoolValueNullable"   Boolean     NULL,
	"StringValue"         text        NULL,
	"StringValueNullable" text        NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "OptimizationData"
(
	"Id",
	"IntVlaue",
	"IntVlaueNullable",
	"BoolValue",
	"BoolValueNullable",
	"StringValue",
	"StringValueNullable"
)
VALUES
(1,1,0,True,True,'1','1'),
(2,2,1,False,NULL,'0','0'),
(3,4,4,False,NULL,'1','1'),
(4,0,1,True,True,'0',NULL),
(5,1,3,True,True,'1',NULL),
(6,3,0,False,False,'0','0'),
(7,1,4,False,False,'1','1'),
(8,3,2,True,True,'0','0')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

/* x => x.IntVlaue == 1 ? 3 : 4 == 3 */
SELECT
	x."Id",
	x."IntVlaue",
	x."IntVlaueNullable",
	x."BoolValue",
	x."BoolValueNullable",
	x."StringValue",
	x."StringValueNullable"
FROM
	"OptimizationData" x
WHERE
	x."IntVlaue" = 1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."IntVlaue",
	t1."IntVlaueNullable",
	t1."BoolValue",
	t1."BoolValueNullable",
	t1."StringValue",
	t1."StringValueNullable"
FROM
	"OptimizationData" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

/* x_with_not => !(x_with_not.IntVlaue == 1 ? 3 : 4 == 3) */
SELECT
	x_with_not."Id",
	x_with_not."IntVlaue",
	x_with_not."IntVlaueNullable",
	x_with_not."BoolValue",
	x_with_not."BoolValueNullable",
	x_with_not."StringValue",
	x_with_not."StringValueNullable"
FROM
	"OptimizationData" x_with_not
WHERE
	x_with_not."IntVlaue" <> 1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."IntVlaue",
	t1."IntVlaueNullable",
	t1."BoolValue",
	t1."BoolValueNullable",
	t1."StringValue",
	t1."StringValueNullable"
FROM
	"OptimizationData" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

/* swap => 3 == swap.IntVlaue == 1 ? 3 : 4 */
SELECT
	swap."Id",
	swap."IntVlaue",
	swap."IntVlaueNullable",
	swap."BoolValue",
	swap."BoolValueNullable",
	swap."StringValue",
	swap."StringValueNullable"
FROM
	"OptimizationData" swap
WHERE
	swap."IntVlaue" = 1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."IntVlaue",
	t1."IntVlaueNullable",
	t1."BoolValue",
	t1."BoolValueNullable",
	t1."StringValue",
	t1."StringValueNullable"
FROM
	"OptimizationData" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

/* swap_with_not => !(3 == swap_with_not.IntVlaue == 1 ? 3 : 4) */
SELECT
	swap_with_not."Id",
	swap_with_not."IntVlaue",
	swap_with_not."IntVlaueNullable",
	swap_with_not."BoolValue",
	swap_with_not."BoolValueNullable",
	swap_with_not."StringValue",
	swap_with_not."StringValueNullable"
FROM
	"OptimizationData" swap_with_not
WHERE
	swap_with_not."IntVlaue" <> 1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."IntVlaue",
	t1."IntVlaueNullable",
	t1."BoolValue",
	t1."BoolValueNullable",
	t1."StringValue",
	t1."StringValueNullable"
FROM
	"OptimizationData" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

/* x => x.IntVlaue == 1 ? null : (bool?)False == (bool?)True */
SELECT
	x."Id",
	x."IntVlaue",
	x."IntVlaueNullable",
	x."BoolValue",
	x."BoolValueNullable",
	x."StringValue",
	x."StringValueNullable"
FROM
	"OptimizationData" x
WHERE
	(CASE
		WHEN x."IntVlaue" = 1 THEN NULL
		ELSE False
	END) = True

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."IntVlaue",
	t1."IntVlaueNullable",
	t1."BoolValue",
	t1."BoolValueNullable",
	t1."StringValue",
	t1."StringValueNullable"
FROM
	"OptimizationData" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

/* x_with_not => !(x_with_not.IntVlaue == 1 ? null : (bool?)False == (bool?)True) */
SELECT
	x_with_not."Id",
	x_with_not."IntVlaue",
	x_with_not."IntVlaueNullable",
	x_with_not."BoolValue",
	x_with_not."BoolValueNullable",
	x_with_not."StringValue",
	x_with_not."StringValueNullable"
FROM
	"OptimizationData" x_with_not
WHERE
	((CASE
		WHEN x_with_not."IntVlaue" = 1 THEN NULL
		ELSE False
	END) = False OR (CASE
		WHEN x_with_not."IntVlaue" = 1 THEN NULL
		ELSE False
	END) IS NULL)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."IntVlaue",
	t1."IntVlaueNullable",
	t1."BoolValue",
	t1."BoolValueNullable",
	t1."StringValue",
	t1."StringValueNullable"
FROM
	"OptimizationData" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

/* swap => (bool?)True == swap.IntVlaue == 1 ? null : (bool?)False */
SELECT
	swap."Id",
	swap."IntVlaue",
	swap."IntVlaueNullable",
	swap."BoolValue",
	swap."BoolValueNullable",
	swap."StringValue",
	swap."StringValueNullable"
FROM
	"OptimizationData" swap
WHERE
	(CASE
		WHEN swap."IntVlaue" = 1 THEN NULL
		ELSE False
	END) = True

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."IntVlaue",
	t1."IntVlaueNullable",
	t1."BoolValue",
	t1."BoolValueNullable",
	t1."StringValue",
	t1."StringValueNullable"
FROM
	"OptimizationData" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

/* swap_with_not => !((bool?)True == swap_with_not.IntVlaue == 1 ? null : (bool?)False) */
SELECT
	swap_with_not."Id",
	swap_with_not."IntVlaue",
	swap_with_not."IntVlaueNullable",
	swap_with_not."BoolValue",
	swap_with_not."BoolValueNullable",
	swap_with_not."StringValue",
	swap_with_not."StringValueNullable"
FROM
	"OptimizationData" swap_with_not
WHERE
	((CASE
		WHEN swap_with_not."IntVlaue" = 1 THEN NULL
		ELSE False
	END) = False OR (CASE
		WHEN swap_with_not."IntVlaue" = 1 THEN NULL
		ELSE False
	END) IS NULL)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."IntVlaue",
	t1."IntVlaueNullable",
	t1."BoolValue",
	t1."BoolValueNullable",
	t1."StringValue",
	t1."StringValueNullable"
FROM
	"OptimizationData" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

/* x => x.IntVlaue == 1 ? null : (bool?)True == (bool?)True */
SELECT
	x."Id",
	x."IntVlaue",
	x."IntVlaueNullable",
	x."BoolValue",
	x."BoolValueNullable",
	x."StringValue",
	x."StringValueNullable"
FROM
	"OptimizationData" x
WHERE
	(CASE
		WHEN x."IntVlaue" = 1 THEN NULL
		ELSE True
	END) = True

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."IntVlaue",
	t1."IntVlaueNullable",
	t1."BoolValue",
	t1."BoolValueNullable",
	t1."StringValue",
	t1."StringValueNullable"
FROM
	"OptimizationData" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

/* x_with_not => !(x_with_not.IntVlaue == 1 ? null : (bool?)True == (bool?)True) */
SELECT
	x_with_not."Id",
	x_with_not."IntVlaue",
	x_with_not."IntVlaueNullable",
	x_with_not."BoolValue",
	x_with_not."BoolValueNullable",
	x_with_not."StringValue",
	x_with_not."StringValueNullable"
FROM
	"OptimizationData" x_with_not
WHERE
	((CASE
		WHEN x_with_not."IntVlaue" = 1 THEN NULL
		ELSE True
	END) = False OR (CASE
		WHEN x_with_not."IntVlaue" = 1 THEN NULL
		ELSE True
	END) IS NULL)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."IntVlaue",
	t1."IntVlaueNullable",
	t1."BoolValue",
	t1."BoolValueNullable",
	t1."StringValue",
	t1."StringValueNullable"
FROM
	"OptimizationData" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

/* swap => (bool?)True == swap.IntVlaue == 1 ? null : (bool?)True */
SELECT
	swap."Id",
	swap."IntVlaue",
	swap."IntVlaueNullable",
	swap."BoolValue",
	swap."BoolValueNullable",
	swap."StringValue",
	swap."StringValueNullable"
FROM
	"OptimizationData" swap
WHERE
	(CASE
		WHEN swap."IntVlaue" = 1 THEN NULL
		ELSE True
	END) = True

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."IntVlaue",
	t1."IntVlaueNullable",
	t1."BoolValue",
	t1."BoolValueNullable",
	t1."StringValue",
	t1."StringValueNullable"
FROM
	"OptimizationData" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

/* swap_with_not => !((bool?)True == swap_with_not.IntVlaue == 1 ? null : (bool?)True) */
SELECT
	swap_with_not."Id",
	swap_with_not."IntVlaue",
	swap_with_not."IntVlaueNullable",
	swap_with_not."BoolValue",
	swap_with_not."BoolValueNullable",
	swap_with_not."StringValue",
	swap_with_not."StringValueNullable"
FROM
	"OptimizationData" swap_with_not
WHERE
	((CASE
		WHEN swap_with_not."IntVlaue" = 1 THEN NULL
		ELSE True
	END) = False OR (CASE
		WHEN swap_with_not."IntVlaue" = 1 THEN NULL
		ELSE True
	END) IS NULL)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."IntVlaue",
	t1."IntVlaueNullable",
	t1."BoolValue",
	t1."BoolValueNullable",
	t1."StringValue",
	t1."StringValueNullable"
FROM
	"OptimizationData" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

/* x => x.BoolValue ? True : False == True */
SELECT
	x."Id",
	x."IntVlaue",
	x."IntVlaueNullable",
	x."BoolValue",
	x."BoolValueNullable",
	x."StringValue",
	x."StringValueNullable"
FROM
	"OptimizationData" x
WHERE
	(CASE
		WHEN x."BoolValue" = True THEN True
		ELSE False
	END) = True

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."IntVlaue",
	t1."IntVlaueNullable",
	t1."BoolValue",
	t1."BoolValueNullable",
	t1."StringValue",
	t1."StringValueNullable"
FROM
	"OptimizationData" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

/* x_with_not => !(x_with_not.BoolValue ? True : False == True) */
SELECT
	x_with_not."Id",
	x_with_not."IntVlaue",
	x_with_not."IntVlaueNullable",
	x_with_not."BoolValue",
	x_with_not."BoolValueNullable",
	x_with_not."StringValue",
	x_with_not."StringValueNullable"
FROM
	"OptimizationData" x_with_not
WHERE
	(CASE
		WHEN x_with_not."BoolValue" = True THEN True
		ELSE False
	END) = False

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."IntVlaue",
	t1."IntVlaueNullable",
	t1."BoolValue",
	t1."BoolValueNullable",
	t1."StringValue",
	t1."StringValueNullable"
FROM
	"OptimizationData" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

/* swap => True == swap.BoolValue ? True : False */
SELECT
	swap."Id",
	swap."IntVlaue",
	swap."IntVlaueNullable",
	swap."BoolValue",
	swap."BoolValueNullable",
	swap."StringValue",
	swap."StringValueNullable"
FROM
	"OptimizationData" swap
WHERE
	(CASE
		WHEN swap."BoolValue" = True THEN True
		ELSE False
	END) = True

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."IntVlaue",
	t1."IntVlaueNullable",
	t1."BoolValue",
	t1."BoolValueNullable",
	t1."StringValue",
	t1."StringValueNullable"
FROM
	"OptimizationData" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

/* swap_with_not => !(True == swap_with_not.BoolValue ? True : False) */
SELECT
	swap_with_not."Id",
	swap_with_not."IntVlaue",
	swap_with_not."IntVlaueNullable",
	swap_with_not."BoolValue",
	swap_with_not."BoolValueNullable",
	swap_with_not."StringValue",
	swap_with_not."StringValueNullable"
FROM
	"OptimizationData" swap_with_not
WHERE
	(CASE
		WHEN swap_with_not."BoolValue" = True THEN True
		ELSE False
	END) = False

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."IntVlaue",
	t1."IntVlaueNullable",
	t1."BoolValue",
	t1."BoolValueNullable",
	t1."StringValue",
	t1."StringValueNullable"
FROM
	"OptimizationData" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

/* x => x.BoolValue == True ? null : (bool?)True == (bool?)True */
SELECT
	x."Id",
	x."IntVlaue",
	x."IntVlaueNullable",
	x."BoolValue",
	x."BoolValueNullable",
	x."StringValue",
	x."StringValueNullable"
FROM
	"OptimizationData" x
WHERE
	(CASE
		WHEN x."BoolValue" = True THEN NULL
		ELSE True
	END) = True

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."IntVlaue",
	t1."IntVlaueNullable",
	t1."BoolValue",
	t1."BoolValueNullable",
	t1."StringValue",
	t1."StringValueNullable"
FROM
	"OptimizationData" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

/* x_with_not => !(x_with_not.BoolValue == True ? null : (bool?)True == (bool?)True) */
SELECT
	x_with_not."Id",
	x_with_not."IntVlaue",
	x_with_not."IntVlaueNullable",
	x_with_not."BoolValue",
	x_with_not."BoolValueNullable",
	x_with_not."StringValue",
	x_with_not."StringValueNullable"
FROM
	"OptimizationData" x_with_not
WHERE
	((CASE
		WHEN x_with_not."BoolValue" = True THEN NULL
		ELSE True
	END) = False OR (CASE
		WHEN x_with_not."BoolValue" = True THEN NULL
		ELSE True
	END) IS NULL)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."IntVlaue",
	t1."IntVlaueNullable",
	t1."BoolValue",
	t1."BoolValueNullable",
	t1."StringValue",
	t1."StringValueNullable"
FROM
	"OptimizationData" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

/* swap => (bool?)True == swap.BoolValue == True ? null : (bool?)True */
SELECT
	swap."Id",
	swap."IntVlaue",
	swap."IntVlaueNullable",
	swap."BoolValue",
	swap."BoolValueNullable",
	swap."StringValue",
	swap."StringValueNullable"
FROM
	"OptimizationData" swap
WHERE
	(CASE
		WHEN swap."BoolValue" = True THEN NULL
		ELSE True
	END) = True

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."IntVlaue",
	t1."IntVlaueNullable",
	t1."BoolValue",
	t1."BoolValueNullable",
	t1."StringValue",
	t1."StringValueNullable"
FROM
	"OptimizationData" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

/* swap_with_not => !((bool?)True == swap_with_not.BoolValue == True ? null : (bool?)True) */
SELECT
	swap_with_not."Id",
	swap_with_not."IntVlaue",
	swap_with_not."IntVlaueNullable",
	swap_with_not."BoolValue",
	swap_with_not."BoolValueNullable",
	swap_with_not."StringValue",
	swap_with_not."StringValueNullable"
FROM
	"OptimizationData" swap_with_not
WHERE
	((CASE
		WHEN swap_with_not."BoolValue" = True THEN NULL
		ELSE True
	END) = False OR (CASE
		WHEN swap_with_not."BoolValue" = True THEN NULL
		ELSE True
	END) IS NULL)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."IntVlaue",
	t1."IntVlaueNullable",
	t1."BoolValue",
	t1."BoolValueNullable",
	t1."StringValue",
	t1."StringValueNullable"
FROM
	"OptimizationData" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

/* x => x.BoolValue == True ? True : False == True */
SELECT
	x."Id",
	x."IntVlaue",
	x."IntVlaueNullable",
	x."BoolValue",
	x."BoolValueNullable",
	x."StringValue",
	x."StringValueNullable"
FROM
	"OptimizationData" x
WHERE
	(CASE
		WHEN x."BoolValue" = True THEN True
		ELSE False
	END) = True

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."IntVlaue",
	t1."IntVlaueNullable",
	t1."BoolValue",
	t1."BoolValueNullable",
	t1."StringValue",
	t1."StringValueNullable"
FROM
	"OptimizationData" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

/* x_with_not => !(x_with_not.BoolValue == True ? True : False == True) */
SELECT
	x_with_not."Id",
	x_with_not."IntVlaue",
	x_with_not."IntVlaueNullable",
	x_with_not."BoolValue",
	x_with_not."BoolValueNullable",
	x_with_not."StringValue",
	x_with_not."StringValueNullable"
FROM
	"OptimizationData" x_with_not
WHERE
	(CASE
		WHEN x_with_not."BoolValue" = True THEN True
		ELSE False
	END) = False

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."IntVlaue",
	t1."IntVlaueNullable",
	t1."BoolValue",
	t1."BoolValueNullable",
	t1."StringValue",
	t1."StringValueNullable"
FROM
	"OptimizationData" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

/* swap => True == swap.BoolValue == True ? True : False */
SELECT
	swap."Id",
	swap."IntVlaue",
	swap."IntVlaueNullable",
	swap."BoolValue",
	swap."BoolValueNullable",
	swap."StringValue",
	swap."StringValueNullable"
FROM
	"OptimizationData" swap
WHERE
	(CASE
		WHEN swap."BoolValue" = True THEN True
		ELSE False
	END) = True

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."IntVlaue",
	t1."IntVlaueNullable",
	t1."BoolValue",
	t1."BoolValueNullable",
	t1."StringValue",
	t1."StringValueNullable"
FROM
	"OptimizationData" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

/* swap_with_not => !(True == swap_with_not.BoolValue == True ? True : False) */
SELECT
	swap_with_not."Id",
	swap_with_not."IntVlaue",
	swap_with_not."IntVlaueNullable",
	swap_with_not."BoolValue",
	swap_with_not."BoolValueNullable",
	swap_with_not."StringValue",
	swap_with_not."StringValueNullable"
FROM
	"OptimizationData" swap_with_not
WHERE
	(CASE
		WHEN swap_with_not."BoolValue" = True THEN True
		ELSE False
	END) = False

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."IntVlaue",
	t1."IntVlaueNullable",
	t1."BoolValue",
	t1."BoolValueNullable",
	t1."StringValue",
	t1."StringValueNullable"
FROM
	"OptimizationData" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "OptimizationData"

