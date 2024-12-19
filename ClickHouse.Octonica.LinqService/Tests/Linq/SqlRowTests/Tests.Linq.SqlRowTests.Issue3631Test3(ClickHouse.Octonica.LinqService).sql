BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue3631Table

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Issue3631Table
(
	Country String,
	State   String
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue3631Table
(
	Country,
	State
)
VALUES
(
	'US',
	'AL'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue3631Table
(
	Country,
	State
)
VALUES
(
	'US',
	'AZ'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue3631Table
(
	Country,
	State
)
VALUES
(
	'US',
	'CA'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue3631Table
(
	Country,
	State
)
VALUES
(
	'US',
	'FL'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue3631Table
(
	Country,
	State
)
VALUES
(
	'US',
	'IN'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue3631Table
(
	Country,
	State
)
VALUES
(
	'US',
	'OH'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue3631Table
(
	Country,
	State
)
VALUES
(
	'US',
	'NY'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue3631Table
(
	Country,
	State
)
VALUES
(
	'CA',
	'AB'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue3631Table
(
	Country,
	State
)
VALUES
(
	'CA',
	'ON'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.Country,
	x.State
FROM
	Issue3631Table x
WHERE
	(x.Country, x.State) IN (
		SELECT
			t1.Item1,
			t1.Item2
		FROM
			(
				SELECT 'US' AS Item1, 'CA' AS Item2
				UNION ALL
				SELECT 'US', 'NY') t1
	)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue3631Table

