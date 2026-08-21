-- YDB Ydb
DECLARE $p Int64
SET     $p = 900l

SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace > $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 900l

SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace >= $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 900l

SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace < $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 900l

SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace <= $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 900l
DECLARE $p_1 Int64
SET     $p_1 = 900l

SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace >= $p AND r.Grace <= $p_1
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $Ticks Int64
SET     $Ticks = 9000000000l

SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace * 10000000l <> $Ticks OR r.Grace IS NULL
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 899l

SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace > $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 900l

SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace >= $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 900l

SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace < $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 899l

SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace <= $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 900l
DECLARE $p_1 Int64
SET     $p_1 = 899l

SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace >= $p AND r.Grace <= $p_1
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $Ticks Int64
SET     $Ticks = 8995000000l

SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace * 10000000l <> $Ticks OR r.Grace IS NULL
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 900l

SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace > $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 900l

SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace >= $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 900l

SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace < $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 900l

SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace <= $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 900l
DECLARE $p_1 Int64
SET     $p_1 = 900l

SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace = $p AND r.Grace = $p_1
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 9000000000l

SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace * 10000000l <> $p OR r.Grace IS NULL
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace IS NULL
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace IS NOT NULL
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 900l

SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace > $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 901l

SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace >= $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 901l

SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace < $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 900l

SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace <= $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 901l
DECLARE $p_1 Int64
SET     $p_1 = 900l

SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace = $p AND r.Grace = $p_1
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 9005000000l

SELECT
	r.Id as Id
FROM
	OptionalDurationRow r
WHERE
	r.Grace * 10000000l <> $p OR r.Grace IS NULL
ORDER BY
	r.Id

