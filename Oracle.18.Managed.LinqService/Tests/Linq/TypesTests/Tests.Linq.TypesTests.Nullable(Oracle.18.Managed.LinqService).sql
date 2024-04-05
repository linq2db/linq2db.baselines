BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 0

SELECT
	CASE
		WHEN p."Value1" IS NULL THEN :p
		ELSE p."Value1"
	END
FROM
	"Parent" p

