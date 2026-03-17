-- ClickHouse.Driver ClickHouse

SELECT
	concat('Issue1977Table/', lowerUTF8(toString(f.firstField)), '/', lowerUTF8(toString(f.secondField))) = arrayStringConcat(['Issue1977Table', lowerUTF8(toString(f.firstField)), lowerUTF8(toString(f.secondField))], '/')
FROM
	Issue1977Table f

