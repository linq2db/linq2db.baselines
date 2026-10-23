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
	x.Id as Id
FROM
	SeparatelyDeclaredRowA x
		CROSS JOIN SeparatelyDeclaredRowB y
WHERE
	x.Span = y.Span

