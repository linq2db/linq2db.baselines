-- ClickHouse.Driver ClickHouse

ALTER TABLE
	SampleClass
UPDATE
	MyString = Replace(Replace(MyString, ';Example', NULL), 'Example', NULL)
WHERE
	position(MyString, 'Example') > 0

