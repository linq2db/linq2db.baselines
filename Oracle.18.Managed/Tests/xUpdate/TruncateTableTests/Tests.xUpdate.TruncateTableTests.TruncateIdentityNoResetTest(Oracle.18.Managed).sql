-- Oracle.18.Managed Oracle.Managed Oracle12

TRUNCATE TABLE "test_temp"

-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 1

SELECT
	t1.ID,
	t1."Field1"
FROM
	"test_temp" t1
ORDER BY
	t1.ID
OFFSET :skip ROWS FETCH NEXT 2 ROWS ONLY 

-- Oracle.18.Managed Oracle.Managed Oracle12

TRUNCATE TABLE "test_temp"

-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 1

SELECT
	t1.ID,
	t1."Field1"
FROM
	"test_temp" t1
ORDER BY
	t1.ID
OFFSET :skip ROWS FETCH NEXT 2 ROWS ONLY 

