-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT FIRST @take
	x.Id
FROM
	NullsTable x
ORDER BY
	CASE
		WHEN x."Value" IS NULL THEN 1
		ELSE 0
	END,
	x."Value",
	x.Id

-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT FIRST @take
	x.Id
FROM
	NullsTable x
ORDER BY
	CASE
		WHEN x."Value" IS NULL THEN 1
		ELSE 0
	END,
	x."Value",
	x.Id

