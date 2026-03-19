-- ClickHouse.Driver ClickHouse

INSERT INTO A
(
	Id
)
VALUES
(
	1
)

-- ClickHouse.Driver ClickHouse

SELECT
	t2.Id,
	t1.AId,
	t1.Id,
	t1.Id_1
FROM
	A t2
		LEFT JOIN (
			SELECT
				bc.AId as AId,
				bc.Id as Id,
				c_1.Id as Id_1
			FROM
				B bc
					INNER JOIN C c_1 ON bc.Id = c_1.BId
		) t1 ON t2.Id = t1.AId

