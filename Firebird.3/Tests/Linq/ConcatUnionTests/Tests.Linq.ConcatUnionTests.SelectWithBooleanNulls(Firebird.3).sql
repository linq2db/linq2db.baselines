BeforeExecute
-- Firebird.3 Firebird3

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
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
		WHEN EXISTS(
			SELECT
				1
			FROM
				"Child" "t2"
		)
			THEN TRUE
		ELSE FALSE
	END,
	NULL
FROM
	"Parent" "x_1"

