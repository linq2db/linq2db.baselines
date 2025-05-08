BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 3

SELECT
	x."position"
FROM
	"entities" x
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT -10 AS X, -10 AS X0, 10 AS Y FROM sys.dual) t
		WHERE
			x."position".x > t.X
	) AND
	ROWNUM <= :take

