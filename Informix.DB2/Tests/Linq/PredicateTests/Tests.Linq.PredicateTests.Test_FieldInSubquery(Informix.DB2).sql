﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	EXISTS(
		SELECT
			*
		FROM
			BooleanTable r_1
		WHERE
			r.Value2 = r_1.Value1
	)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	EXISTS(
		SELECT
			*
		FROM
			BooleanTable r_1
		WHERE
			r.Value2 = r_1.Value4
	)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	EXISTS(
		SELECT
			*
		FROM
			BooleanTable r_1
		WHERE
			r.Value5 = r_1.Value1
	)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	EXISTS(
		SELECT
			*
		FROM
			BooleanTable r_1
		WHERE
			r.Value5 = r_1.Value4 OR r.Value5 IS NULL AND r_1.Value4 IS NULL
	)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			BooleanTable r_1
		WHERE
			r.Value2 = r_1.Value1
	)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			BooleanTable r_1
		WHERE
			r.Value2 = r_1.Value4
	)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			BooleanTable r_1
		WHERE
			r.Value5 = r_1.Value1
	)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			BooleanTable r_1
		WHERE
			r.Value5 = r_1.Value4 OR r.Value5 IS NULL AND r_1.Value4 IS NULL
	)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

