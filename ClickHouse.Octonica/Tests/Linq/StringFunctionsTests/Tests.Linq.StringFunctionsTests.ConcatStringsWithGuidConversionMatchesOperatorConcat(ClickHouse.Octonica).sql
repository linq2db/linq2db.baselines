-- ClickHouse.Octonica ClickHouse
SELECT
	(concat('GuidConcatRow/', lowerUTF8(toString(f.firstField)), '/', lowerUTF8(toString(f.secondField)))) = arrayStringConcat(['GuidConcatRow', lowerUTF8(toString(f.firstField)), lowerUTF8(toString(f.secondField))], '/')
FROM
	GuidConcatRow f

