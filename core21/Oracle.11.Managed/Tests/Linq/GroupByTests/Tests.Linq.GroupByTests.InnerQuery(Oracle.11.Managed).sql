BeforeExecute
-- SQLite.MS SQLite

SELECT 
	[t1].[PersonID], 
	[t1].[Taxonomy]
FROM
	[Doctor] [t1]

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT 
	(
		SELECT 
			keyParam.Taxonomy
		FROM
			Doctor keyParam
		WHERE
			t1.PersonID = keyParam.PersonID AND ROWNUM <= :take
	)
FROM
	Doctor t1
GROUP BY
	t1.PersonID

