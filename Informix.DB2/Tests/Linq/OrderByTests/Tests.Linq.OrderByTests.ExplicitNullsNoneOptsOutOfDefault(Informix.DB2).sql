-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT FIRST @take
	x.Id
FROM
	NullsTable x
ORDER BY
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
	x."Value",
	x.Id

