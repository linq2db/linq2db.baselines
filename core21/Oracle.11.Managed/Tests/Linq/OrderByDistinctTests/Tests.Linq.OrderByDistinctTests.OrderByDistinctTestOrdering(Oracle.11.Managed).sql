BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE OrderByDistinctData
(
	Id            Int          NOT NULL,
	DuplicateData VarChar(255)     NULL,
	OrderData1    Int          NOT NULL,
	OrderData2    Int          NOT NULL,

	CONSTRAINT PK_OrderByDistinctData PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO OrderByDistinctData (Id, DuplicateData, OrderData1, OrderData2) VALUES (1,'One',1,1)
	INTO OrderByDistinctData (Id, DuplicateData, OrderData1, OrderData2) VALUES (10,'Two',1,1)
	INTO OrderByDistinctData (Id, DuplicateData, OrderData1, OrderData2) VALUES (100,'Three',1,1)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 3
DECLARE @skip Int32
SET     @skip = 0

SELECT
	t2.DuplicateData
FROM
	(
		SELECT
			t1.DuplicateData,
			ROWNUM as RN
		FROM
			(
				SELECT
					x.DuplicateData
				FROM
					OrderByDistinctData x
				GROUP BY
					x.DuplicateData
				ORDER BY
					Max(x.OrderData1)
			) t1
		WHERE
			ROWNUM <= :take
	) t2
WHERE
	t2.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 3
DECLARE @skip Int32
SET     @skip = 0

SELECT
	t2.DuplicateData
FROM
	(
		SELECT
			t1.DuplicateData,
			ROWNUM as RN
		FROM
			(
				SELECT
					x.DuplicateData
				FROM
					OrderByDistinctData x
				ORDER BY
					x.OrderData1
			) t1
		WHERE
			ROWNUM <= :take
	) t2
WHERE
	t2.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 3
DECLARE @skip Int32
SET     @skip = 0

SELECT
	t2.DuplicateData
FROM
	(
		SELECT
			t1.DuplicateData,
			ROWNUM as RN
		FROM
			(
				SELECT
					x.DuplicateData
				FROM
					OrderByDistinctData x
				GROUP BY
					x.DuplicateData
				ORDER BY
					Min(x.OrderData1) DESC
			) t1
		WHERE
			ROWNUM <= :take
	) t2
WHERE
	t2.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 3
DECLARE @skip Int32
SET     @skip = 0

SELECT
	t2.DuplicateData
FROM
	(
		SELECT
			t1.DuplicateData,
			ROWNUM as RN
		FROM
			(
				SELECT
					x.DuplicateData
				FROM
					OrderByDistinctData x
				ORDER BY
					x.OrderData1 DESC
			) t1
		WHERE
			ROWNUM <= :take
	) t2
WHERE
	t2.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 3
DECLARE @skip Int32
SET     @skip = 0

SELECT
	t2.DuplicateData
FROM
	(
		SELECT
			t1.DuplicateData,
			ROWNUM as RN
		FROM
			(
				SELECT
					x.DuplicateData
				FROM
					OrderByDistinctData x
				GROUP BY
					x.DuplicateData
				ORDER BY
					Max(x.OrderData1),
					Max(x.OrderData2)
			) t1
		WHERE
			ROWNUM <= :take
	) t2
WHERE
	t2.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 3
DECLARE @skip Int32
SET     @skip = 0

SELECT
	t2.DuplicateData
FROM
	(
		SELECT
			t1.DuplicateData,
			ROWNUM as RN
		FROM
			(
				SELECT
					x.DuplicateData
				FROM
					OrderByDistinctData x
				ORDER BY
					x.OrderData1,
					x.OrderData2
			) t1
		WHERE
			ROWNUM <= :take
	) t2
WHERE
	t2.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 3
DECLARE @skip Int32
SET     @skip = 0

SELECT
	t2.DuplicateData
FROM
	(
		SELECT
			t1.DuplicateData,
			ROWNUM as RN
		FROM
			(
				SELECT
					x.DuplicateData
				FROM
					OrderByDistinctData x
				GROUP BY
					x.DuplicateData
				ORDER BY
					Max(x.OrderData1),
					Min(x.OrderData2) DESC
			) t1
		WHERE
			ROWNUM <= :take
	) t2
WHERE
	t2.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 3
DECLARE @skip Int32
SET     @skip = 0

SELECT
	t2.DuplicateData
FROM
	(
		SELECT
			t1.DuplicateData,
			ROWNUM as RN
		FROM
			(
				SELECT
					x.DuplicateData
				FROM
					OrderByDistinctData x
				ORDER BY
					x.OrderData1,
					x.OrderData2 DESC
			) t1
		WHERE
			ROWNUM <= :take
	) t2
WHERE
	t2.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 3
DECLARE @skip Int32
SET     @skip = 0

SELECT
	t2.DuplicateData
FROM
	(
		SELECT
			t1.DuplicateData,
			ROWNUM as RN
		FROM
			(
				SELECT
					x.DuplicateData
				FROM
					OrderByDistinctData x
				GROUP BY
					x.DuplicateData
				ORDER BY
					Min(x.OrderData1) DESC,
					Min(x.OrderData2) DESC
			) t1
		WHERE
			ROWNUM <= :take
	) t2
WHERE
	t2.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 3
DECLARE @skip Int32
SET     @skip = 0

SELECT
	t2.DuplicateData
FROM
	(
		SELECT
			t1.DuplicateData,
			ROWNUM as RN
		FROM
			(
				SELECT
					x.DuplicateData
				FROM
					OrderByDistinctData x
				ORDER BY
					x.OrderData1 DESC,
					x.OrderData2 DESC
			) t1
		WHERE
			ROWNUM <= :take
	) t2
WHERE
	t2.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 3
DECLARE @skip Int32
SET     @skip = 0

SELECT
	t2.DuplicateData
FROM
	(
		SELECT
			t1.DuplicateData,
			ROWNUM as RN
		FROM
			(
				SELECT
					x.DuplicateData
				FROM
					OrderByDistinctData x
				GROUP BY
					x.DuplicateData
				ORDER BY
					Max(x.OrderData1),
					Min(x.OrderData2) DESC
			) t1
		WHERE
			ROWNUM <= :take
	) t2
WHERE
	t2.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 3
DECLARE @skip Int32
SET     @skip = 0

SELECT
	t2.DuplicateData
FROM
	(
		SELECT
			t1.DuplicateData,
			ROWNUM as RN
		FROM
			(
				SELECT
					x.DuplicateData
				FROM
					OrderByDistinctData x
				ORDER BY
					x.OrderData1,
					x.OrderData2 DESC
			) t1
		WHERE
			ROWNUM <= :take
	) t2
WHERE
	t2.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE OrderByDistinctData

