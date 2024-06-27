BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	CASE
		WHEN q."ParentID" IS NOT NULL THEN q."ParentID"
		ELSE 0
	END
FROM
	"Parent" q

