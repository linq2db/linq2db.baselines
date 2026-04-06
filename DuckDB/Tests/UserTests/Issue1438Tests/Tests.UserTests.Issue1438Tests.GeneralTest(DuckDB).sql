-- DuckDB
DECLARE $Has  -- Boolean
SET     $Has = True

INSERT INTO Issue1438
(
	Has
)
VALUES
(
	CAST($Has AS BOOLEAN)
)
RETURNING 
	Id

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 1

SELECT
	t1.Id,
	t1.Has
FROM
	Issue1438 t1
WHERE
	t1.Id = CAST($id AS INTEGER)
LIMIT 2

