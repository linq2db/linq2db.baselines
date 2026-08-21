-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Span Int64
SET     $Span = 54000000000l

INSERT INTO SeparatelyDeclaredRowA
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
DECLARE $Id Int32
SET     $Id = 2
DECLARE $Span Int64
SET     $Span = 54000000000l

INSERT INTO SeparatelyDeclaredRowB
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
	t1.Id as Id,
	t1.Span as Span
FROM
	(
		SELECT
			r.Id as Id,
			r.Span as Span
		FROM
			SeparatelyDeclaredRowA r
		UNION ALL
		SELECT
			r_1.Id as Id,
			r_1.Span as Span
		FROM
			SeparatelyDeclaredRowB r_1
	) t1
ORDER BY
	t1.Id

