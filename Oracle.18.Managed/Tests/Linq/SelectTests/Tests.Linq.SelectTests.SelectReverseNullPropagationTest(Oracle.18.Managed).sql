BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN q."ParentID" IS NOT NULL THEN q."ParentID"
		ELSE 0
	END
FROM
	"Parent" q

