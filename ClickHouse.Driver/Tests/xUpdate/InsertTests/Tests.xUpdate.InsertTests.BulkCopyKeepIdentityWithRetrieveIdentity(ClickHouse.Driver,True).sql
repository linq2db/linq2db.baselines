-- ClickHouse.Driver ClickHouse
SELECT Max(Id) FROM KeepIdentityTable

INSERT ASYNC BULK KeepIdentityTable(Text)

-- ClickHouse.Driver ClickHouse
INSERT INTO KeepIdentityTable
(
	Text
)
VALUES
(
	'Text 3'
)

