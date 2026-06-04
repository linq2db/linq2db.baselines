-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT FIRST @take
	t1.Id,
	t1.Grp,
	t1."Value"
FROM
	NullsTable t1
ORDER BY
	t1.Grp,
	t1."Value" DESC,
	t1.Id

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Grp,
	t1."Value"
FROM
	NullsTable t1

