-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Span Int64
SET     $Span = 5400l

INSERT INTO ScaledRow
(
	Id,
	Span
)
VALUES
(
	$Id,
	$Span
)

-- YDB Ydb
SELECT
	t1.Source as Source,
	t1.Span as Span
FROM
	(
		SELECT
			Unwrap(CAST(1 AS Int32)) as Source,
			r.Span as Span
		FROM
			ScaledRow r
		UNION ALL
		SELECT
			Unwrap(CAST(2 AS Int32)) as Source,
			r_1.Span as Span
		FROM
			ScaledRow r_1
	) t1
ORDER BY
	t1.Source

