BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WhereWithString

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS WhereWithString
(
	Id          Int32,
	StringValue Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO WhereWithString
(
	Id,
	StringValue
)
VALUES
(
	1,
	'Str1'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Id,
	x.StringValue
FROM
	WhereWithString x
WHERE
	position(x.StringValue, 'Str') > 0 AND x.StringValue IS NOT NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WhereWithString

