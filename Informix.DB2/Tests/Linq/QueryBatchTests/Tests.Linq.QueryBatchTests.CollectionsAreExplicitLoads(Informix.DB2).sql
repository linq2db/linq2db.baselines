-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT FIRST @take
	t1.Id,
	t1."Value",
	t1.GroupId,
	t1.Name
FROM
	BatchItem t1
ORDER BY
	t1.Id

-- Informix.DB2 Informix
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			BatchItem t1
	)
FROM table(set{1})

