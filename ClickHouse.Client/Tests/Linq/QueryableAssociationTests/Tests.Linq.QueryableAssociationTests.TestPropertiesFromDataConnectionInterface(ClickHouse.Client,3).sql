BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EntityWithUser3

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS EntityWithUser3
(
	UserId               Int32,
	BelongsToCurrentUser Bool
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO EntityWithUser3
(
	UserId,
	BelongsToCurrentUser
)
VALUES
(1,false),
(2,false),
(2,false),
(3,false),
(3,false),
(3,false)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	EntityWithUser3 x
WHERE
	x.UserId = 3

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EntityWithUser3

