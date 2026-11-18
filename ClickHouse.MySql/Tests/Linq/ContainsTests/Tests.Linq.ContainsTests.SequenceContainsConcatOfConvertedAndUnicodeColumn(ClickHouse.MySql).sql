-- ClickHouse.MySql ClickHouse
SELECT
	concat(Coalesce(t.Code, ''), Coalesce(t.Title, ''))
FROM
	PrefixedCodeWithTitle t
LIMIT 2

-- ClickHouse.MySql ClickHouse
SELECT
	CASE
		WHEN 'x:AT' IN (
			SELECT
				concat(Coalesce(t.Code, ''), Coalesce(t.Title, ''))
			FROM
				PrefixedCodeWithTitle t
		)
			THEN true
		ELSE false
	END

