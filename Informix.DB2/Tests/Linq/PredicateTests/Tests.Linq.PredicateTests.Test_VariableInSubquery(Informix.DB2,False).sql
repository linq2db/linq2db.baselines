﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @One Integer(4) -- Int32
SET     @One = 1

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
			BooleanTable s
		WHERE
			s.Id > r.Id AND @One = s.Value1
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
DECLARE @Zero Integer(4) -- Int32
SET     @Zero = 0

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
			BooleanTable s
		WHERE
			s.Id > r.Id AND @Zero = s.Value1
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
DECLARE @OneN Integer(4) -- Int32
SET     @OneN = 1

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
			BooleanTable s
		WHERE
			s.Id > r.Id AND @OneN = s.Value1
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
DECLARE @ZeroN Integer(4) -- Int32
SET     @ZeroN = 0

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
			BooleanTable s
		WHERE
			s.Id > r.Id AND @ZeroN = s.Value1
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
	1 = 0

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
DECLARE @One Integer(4) -- Int32
SET     @One = 1

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
			BooleanTable s
		WHERE
			s.Id > r.Id AND @One = s.Value1
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
DECLARE @Zero Integer(4) -- Int32
SET     @Zero = 0

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
			BooleanTable s
		WHERE
			s.Id > r.Id AND @Zero = s.Value1
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
DECLARE @OneN Integer(4) -- Int32
SET     @OneN = 1

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
			BooleanTable s
		WHERE
			s.Id > r.Id AND @OneN = s.Value1
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
DECLARE @ZeroN Integer(4) -- Int32
SET     @ZeroN = 0

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
			BooleanTable s
		WHERE
			s.Id > r.Id AND @ZeroN = s.Value1
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

