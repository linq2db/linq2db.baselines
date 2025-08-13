BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Issue3060Table
UPDATE
	Uid = '\x3D\x66\x7B\xBC\xDE\x0F\x27\x43\x8F\x92\x5D\x8C\xC3\xA1\x1D\x11'
WHERE
	Id = toInt64(0)

