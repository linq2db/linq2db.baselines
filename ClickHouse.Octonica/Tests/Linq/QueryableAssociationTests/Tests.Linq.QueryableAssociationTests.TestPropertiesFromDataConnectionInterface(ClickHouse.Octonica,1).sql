BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EntityWithUser3

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS EntityWithUser3
(
	UserId               Int32,
	BelongsToCurrentUser Bool
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	EntityWithUser3 x
WHERE
	x.UserId = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EntityWithUser3

