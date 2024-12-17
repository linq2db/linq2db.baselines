BeforeExecute
-- Firebird.4 Firebird4

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				"Child" "t1"
		)
			THEN TRUE
		ELSE FALSE
	END,
	CASE
		WHEN "x"."ParentID" <> 0 THEN TRUE
		ELSE FALSE
	END
FROM
	"Parent" "x"
UNION ALL
SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				"Child" "t2"
		)
			THEN TRUE
		ELSE FALSE
	END,
	NULL
FROM
	"Parent" "x_1"

