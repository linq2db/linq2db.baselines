BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS EntityWithUser2

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS EntityWithUser2
(
	UserId               Int32,
	BelongsToCurrentUser Bool
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityWithUser2
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

INSERT INTO EntityWithUser2
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

INSERT INTO EntityWithUser2
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

INSERT INTO EntityWithUser2
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

INSERT INTO EntityWithUser2
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

INSERT INTO EntityWithUser2
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
	EntityWithUser2 x
WHERE
	x.UserId = 3

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS EntityWithUser2

