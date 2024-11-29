BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 3

SELECT
	x."position" as "Position_1"
FROM
	"entities" x
WHERE
	EXISTS(
		SELECT
			1
		FROM
			(
				SELECT -10 AS X FROM sys.dual) t
		WHERE
			x."position".x > t.X
	)
FETCH NEXT :take ROWS ONLY

