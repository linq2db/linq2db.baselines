BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN q."ParentID" IS NOT NULL THEN q."ParentID"
		ELSE 0
	END
FROM
	"Parent" q

