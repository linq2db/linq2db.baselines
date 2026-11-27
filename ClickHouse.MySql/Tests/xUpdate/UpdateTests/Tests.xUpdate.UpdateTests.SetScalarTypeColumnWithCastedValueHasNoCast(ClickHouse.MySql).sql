-- ClickHouse.MySql ClickHouse
ALTER TABLE
	SpecialScalarSample
UPDATE
	MyString = Replace(Replace(MyString, ';Example', NULL), 'Example', NULL)
WHERE
	position(MyString, 'Example') > 0

