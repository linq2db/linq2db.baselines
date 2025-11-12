-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN concat('Issue1977Table/', toString(f.firstField), '/', toString(f.secondField)) = arrayStringConcat(['Issue1977Table', toString(f.firstField), toString(f.secondField)], '/')
			THEN true
		ELSE false
	END
FROM
	Issue1977Table f

