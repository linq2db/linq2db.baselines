BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

TRUNCATE TABLE "test_temp"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)
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

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

TRUNCATE TABLE "test_temp"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)
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

