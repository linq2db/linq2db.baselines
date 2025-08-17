BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

TRUNCATE TABLE "test_temp"

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @skip Int32
SET     @skip = 1

SELECT
	t3.ID,
	t3."Field1"
FROM
	(
		SELECT
			t2.ID,
			t2."Field1",
			ROWNUM as RN
		FROM
			(
				SELECT
					t1.ID,
					t1."Field1"
				FROM
					"test_temp" t1
				ORDER BY
					t1.ID
			) t2
		WHERE
			ROWNUM <= (:skip + 2)
	) t3
WHERE
	t3.RN > :skip
ORDER BY
	t3.ID

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

TRUNCATE TABLE "test_temp"

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @skip Int32
SET     @skip = 1

SELECT
	t3.ID,
	t3."Field1"
FROM
	(
		SELECT
			t2.ID,
			t2."Field1",
			ROWNUM as RN
		FROM
			(
				SELECT
					t1.ID,
					t1."Field1"
				FROM
					"test_temp" t1
				ORDER BY
					t1.ID
			) t2
		WHERE
			ROWNUM <= (:skip + 2)
	) t3
WHERE
	t3.RN > :skip
ORDER BY
	t3.ID

