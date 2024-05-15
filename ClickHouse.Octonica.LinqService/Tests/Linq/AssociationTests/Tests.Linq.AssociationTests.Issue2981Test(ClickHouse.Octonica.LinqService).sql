BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue2981Entity

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Issue2981Entity
(
	OwnerId Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue2981Entity
(
	OwnerId
)
VALUES
(
	1
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue2981Entity
(
	OwnerId
)
VALUES
(
	2
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue2981OwnerEntity

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Issue2981OwnerEntity
(
	Id Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue2981OwnerEntity
(
	Id
)
VALUES
(
	1
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.OwnerId,
	a_Owner.Id
FROM
	Issue2981Entity r
		LEFT JOIN Issue2981OwnerEntity a_Owner ON r.OwnerId = a_Owner.Id
ORDER BY
	r.OwnerId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue2981OwnerEntity

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue2981Entity

