BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EntityWithUser1

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS EntityWithUser1
(
	UserId               Int32,
	BelongsToCurrentUser Bool
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO EntityWithUser1
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
	EntityWithUser1 x
WHERE
	x.UserId = 2

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EntityWithUser1

