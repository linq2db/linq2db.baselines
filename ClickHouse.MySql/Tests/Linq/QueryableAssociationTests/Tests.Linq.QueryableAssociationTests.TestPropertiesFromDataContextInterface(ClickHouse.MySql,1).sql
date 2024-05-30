BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS EntityWithUser3

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS EntityWithUser3
(
	UserId               Int32,
	BelongsToCurrentUser Bool
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityWithUser3
(
	UserId,
	BelongsToCurrentUser
)
VALUES
(
	1,
	false
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityWithUser3
(
	UserId,
	BelongsToCurrentUser
)
VALUES
(
	2,
	false
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityWithUser3
(
	UserId,
	BelongsToCurrentUser
)
VALUES
(
	2,
	false
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityWithUser3
(
	UserId,
	BelongsToCurrentUser
)
VALUES
(
	3,
	false
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityWithUser3
(
	UserId,
	BelongsToCurrentUser
)
VALUES
(
	3,
	false
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityWithUser3
(
	UserId,
	BelongsToCurrentUser
)
VALUES
(
	3,
	false
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	EntityWithUser3 x
WHERE
	x.UserId = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS EntityWithUser3

