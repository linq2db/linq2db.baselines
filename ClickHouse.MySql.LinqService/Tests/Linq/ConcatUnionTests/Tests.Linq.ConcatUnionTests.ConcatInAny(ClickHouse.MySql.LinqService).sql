BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				p.ParentID
			FROM
				Parent p
			UNION ALL
			SELECT
				p_1.ParentID
			FROM
				Parent p_1
		)
			THEN true
		ELSE false
	END

