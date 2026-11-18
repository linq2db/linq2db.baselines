-- ClickHouse.Driver ClickHouse
SELECT
	CASE
		WHEN 'x:A' IN (
			SELECT
				toString(t.Code)
			FROM
				PrefixedCode t
			WHERE
				t.Code IS NOT NULL
		)
			THEN true
		ELSE false
	END

