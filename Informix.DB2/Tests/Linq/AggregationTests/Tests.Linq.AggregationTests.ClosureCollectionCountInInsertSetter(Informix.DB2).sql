-- Informix.DB2 Informix
DECLARE @EmptyCount Integer(4) -- Int32
SET     @EmptyCount = 0
DECLARE @ItemsCount Integer(4) -- Int32
SET     @ItemsCount = 2

INSERT INTO CountTarget
(
	Id,
	EmptyCount,
	ItemsCount
)
VALUES
(
	1,
	@EmptyCount,
	@ItemsCount
)

-- Informix.DB2 Informix
SELECT FIRST 2
	t1.Id,
	t1.EmptyCount,
	t1.ItemsCount
FROM
	CountTarget t1

