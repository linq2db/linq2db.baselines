BeforeExecute
-- Firebird4 Firebird

SELECT
	"p"."c1"
FROM
	(
		SELECT
			CASE
				WHEN "selectParam"."ParentID" > 2
					THEN CASE
					WHEN "selectParam"."ParentID" > 3
						THEN '1'
					ELSE '2'
				END
				ELSE '3'
			END || '2' as "c1"
		FROM
			"Child" "selectParam"
		GROUP BY
			CASE
				WHEN "selectParam"."ParentID" > 2
					THEN CASE
					WHEN "selectParam"."ParentID" > 3
						THEN '1'
					ELSE '2'
				END
				ELSE '3'
			END
	) "p"
WHERE
	"p"."c1" = '22'

