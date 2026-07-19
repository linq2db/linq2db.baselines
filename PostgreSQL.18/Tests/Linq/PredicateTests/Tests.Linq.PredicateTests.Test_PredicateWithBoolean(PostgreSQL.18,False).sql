-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" = r."Value2") = :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" = r."Value2") = :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" = r."Value4" AND r."Value4" IS NOT NULL) = :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" = r."Value2") = :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	1 = 0

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" = r."Value4" AND r."Value4" IS NOT NULL) = :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" = r."Value4" AND r."Value4" IS NOT NULL) = :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" = r."Value4" AND r."Value4" IS NOT NULL) = :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" = r."Value4" AND r."Value4" IS NOT NULL) = :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	1 = 0

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	((r."Value5" = r."Value4" OR r."Value5" IS NULL AND r."Value4" IS NULL) AND NOT (r."Value5" IS NULL AND r."Value4" IS NOT NULL OR r."Value5" IS NOT NULL AND r."Value4" IS NULL)) = :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	((r."Value5" = r."Value4" OR r."Value5" IS NULL AND r."Value4" IS NULL) AND NOT (r."Value5" IS NULL AND r."Value4" IS NOT NULL OR r."Value5" IS NOT NULL AND r."Value4" IS NULL)) = :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	((r."Value5" = r."Value4" OR r."Value5" IS NULL AND r."Value4" IS NULL) AND NOT (r."Value5" IS NULL AND r."Value4" IS NOT NULL OR r."Value5" IS NOT NULL AND r."Value4" IS NULL)) = :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	((r."Value5" = r."Value4" OR r."Value5" IS NULL AND r."Value4" IS NULL) AND NOT (r."Value5" IS NULL AND r."Value4" IS NOT NULL OR r."Value5" IS NOT NULL AND r."Value4" IS NULL)) = :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	1 = 0

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" = r."Value2") <> :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" = r."Value2") <> :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" = r."Value2") <> :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" = r."Value2") <> :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" = r."Value4" AND r."Value4" IS NOT NULL) <> :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" = r."Value4" AND r."Value4" IS NOT NULL) <> :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" = r."Value4" AND r."Value4" IS NOT NULL) <> :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" = r."Value4" AND r."Value4" IS NOT NULL) <> :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	((r."Value5" = r."Value4" OR r."Value5" IS NULL AND r."Value4" IS NULL) AND NOT (r."Value5" IS NULL AND r."Value4" IS NOT NULL OR r."Value5" IS NOT NULL AND r."Value4" IS NULL)) <> :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	((r."Value5" = r."Value4" OR r."Value5" IS NULL AND r."Value4" IS NULL) AND NOT (r."Value5" IS NULL AND r."Value4" IS NOT NULL OR r."Value5" IS NOT NULL AND r."Value4" IS NULL)) <> :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	((r."Value5" = r."Value4" OR r."Value5" IS NULL AND r."Value4" IS NULL) AND NOT (r."Value5" IS NULL AND r."Value4" IS NOT NULL OR r."Value5" IS NOT NULL AND r."Value4" IS NULL)) <> :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	((r."Value5" = r."Value4" OR r."Value5" IS NULL AND r."Value4" IS NULL) AND NOT (r."Value5" IS NULL AND r."Value4" IS NOT NULL OR r."Value5" IS NOT NULL AND r."Value4" IS NULL)) <> :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" > r."Value2") = :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" > r."Value2") = :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" > r."Value2") = :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" > r."Value2") = :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	1 = 0

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" > r."Value4" AND r."Value4" IS NOT NULL) = :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" > r."Value4" AND r."Value4" IS NOT NULL) = :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" > r."Value4" AND r."Value4" IS NOT NULL) = :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" > r."Value4" AND r."Value4" IS NOT NULL) = :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	1 = 0

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" > r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) = :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" > r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) = :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" > r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) = :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" > r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) = :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	1 = 0

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" > r."Value2") <> :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" > r."Value2") <> :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" > r."Value2") <> :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" > r."Value2") <> :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" > r."Value4" AND r."Value4" IS NOT NULL) <> :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" > r."Value4" AND r."Value4" IS NOT NULL) <> :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" > r."Value4" AND r."Value4" IS NOT NULL) <> :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" > r."Value4" AND r."Value4" IS NOT NULL) <> :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" > r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) <> :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" > r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) <> :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" > r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) <> :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" > r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) <> :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" >= r."Value2") = :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" >= r."Value2") = :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" >= r."Value2") = :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" >= r."Value2") = :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	1 = 0

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" >= r."Value4" AND r."Value4" IS NOT NULL) = :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" >= r."Value4" AND r."Value4" IS NOT NULL) = :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" >= r."Value4" AND r."Value4" IS NOT NULL) = :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" >= r."Value4" AND r."Value4" IS NOT NULL) = :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	1 = 0

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" >= r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) = :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" >= r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) = :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" >= r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) = :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" >= r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) = :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	1 = 0

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" >= r."Value2") <> :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" >= r."Value2") <> :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" >= r."Value2") <> :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" >= r."Value2") <> :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" >= r."Value4" AND r."Value4" IS NOT NULL) <> :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" >= r."Value4" AND r."Value4" IS NOT NULL) <> :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" >= r."Value4" AND r."Value4" IS NOT NULL) <> :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" >= r."Value4" AND r."Value4" IS NOT NULL) <> :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" >= r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) <> :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" >= r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) <> :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" >= r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) <> :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" >= r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) <> :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" < r."Value2") = :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" < r."Value2") = :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" < r."Value2") = :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" < r."Value2") = :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	1 = 0

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" < r."Value4" AND r."Value4" IS NOT NULL) = :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" < r."Value4" AND r."Value4" IS NOT NULL) = :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" < r."Value4" AND r."Value4" IS NOT NULL) = :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" < r."Value4" AND r."Value4" IS NOT NULL) = :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	1 = 0

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" < r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) = :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" < r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) = :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" < r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) = :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" < r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) = :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	1 = 0

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" < r."Value2") <> :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" < r."Value2") <> :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" < r."Value2") <> :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" < r."Value2") <> :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" < r."Value4" AND r."Value4" IS NOT NULL) <> :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" < r."Value4" AND r."Value4" IS NOT NULL) <> :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" < r."Value4" AND r."Value4" IS NOT NULL) <> :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" < r."Value4" AND r."Value4" IS NOT NULL) <> :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" < r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) <> :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" < r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) <> :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" < r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) <> :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" < r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) <> :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" <= r."Value2") = :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" <= r."Value2") = :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" <= r."Value2") = :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" <= r."Value2") = :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	1 = 0

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" <= r."Value4" AND r."Value4" IS NOT NULL) = :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" <= r."Value4" AND r."Value4" IS NOT NULL) = :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" <= r."Value4" AND r."Value4" IS NOT NULL) = :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" <= r."Value4" AND r."Value4" IS NOT NULL) = :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	1 = 0

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" <= r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) = :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" <= r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) = :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" <= r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) = :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" <= r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) = :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	1 = 0

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" <= r."Value2") <> :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" <= r."Value2") <> :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" <= r."Value2") <> :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" <= r."Value2") <> :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" <= r."Value4" AND r."Value4" IS NOT NULL) <> :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" <= r."Value4" AND r."Value4" IS NOT NULL) <> :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" <= r."Value4" AND r."Value4" IS NOT NULL) <> :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" <= r."Value4" AND r."Value4" IS NOT NULL) <> :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @True Boolean
SET     @True = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" <= r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) <> :True

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" <= r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) <> :TrueN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @False Boolean
SET     @False = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" <= r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) <> :False

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value5" <= r."Value4" AND r."Value5" IS NOT NULL AND r."Value4" IS NOT NULL) <> :FalseN

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

