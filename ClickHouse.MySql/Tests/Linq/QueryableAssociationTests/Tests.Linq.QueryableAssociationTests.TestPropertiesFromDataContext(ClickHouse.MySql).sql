BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS EntityWithUser

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS EntityWithUser
(
	UserId                   Int32,
	BelongsToCurrentUser     Bool,
	BelongsToCurrentUserFail Bool
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityWithUser
(
	UserId,
	BelongsToCurrentUser,
	BelongsToCurrentUserFail
)
VALUES
(
	toInt32(1),
	false,
	false
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityWithUser
(
	UserId,
	BelongsToCurrentUser,
	BelongsToCurrentUserFail
)
VALUES
(
	toInt32(2),
	false,
	false
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityWithUser
(
	UserId,
	BelongsToCurrentUser,
	BelongsToCurrentUserFail
)
VALUES
(
	toInt32(2),
	false,
	false
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityWithUser
(
	UserId,
	BelongsToCurrentUser,
	BelongsToCurrentUserFail
)
VALUES
(
	toInt32(3),
	false,
	false
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityWithUser
(
	UserId,
	BelongsToCurrentUser,
	BelongsToCurrentUserFail
)
VALUES
(
	toInt32(3),
	false,
	false
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO EntityWithUser
(
	UserId,
	BelongsToCurrentUser,
	BelongsToCurrentUserFail
)
VALUES
(
	toInt32(3),
	false,
	false
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS EntityWithUser

