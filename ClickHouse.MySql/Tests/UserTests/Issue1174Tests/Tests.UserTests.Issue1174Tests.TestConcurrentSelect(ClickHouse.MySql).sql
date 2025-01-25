BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS User

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS User
(
	Id   UUID,
	Name Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO User
(
	Id,
	Name
)
VALUES
(toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),'User1'),
(toUUID('a948600d-de21-4f74-8ac2-9516b287076e'),'User2')

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Name
FROM
	User t1
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Name
FROM
	User t1
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS User

