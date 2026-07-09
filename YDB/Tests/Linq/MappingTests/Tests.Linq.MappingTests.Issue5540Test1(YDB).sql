-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Items Text(3) -- String
SET     $Items = 'A;B'u

INSERT INTO Issue5540
(
	Id,
	Items
)
VALUES
(
	$Id,
	$Items
)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Items as Items
FROM
	Issue5540 t1

