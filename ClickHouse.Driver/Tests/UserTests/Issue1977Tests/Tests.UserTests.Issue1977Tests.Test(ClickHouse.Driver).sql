-- ClickHouse.Driver ClickHouse

SELECT
	concat('Issue1977Table/', toString(f.firstField), '/', toString(f.secondField)) = arrayStringConcat(['Issue1977Table', toString(f.firstField), toString(f.secondField)], '/')
FROM
	Issue1977Table f

