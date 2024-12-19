BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue3631Table

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue3631Table
(
	Country String,
	State   String
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

SELECT
	x.Country,
	x.State
FROM
	Issue3631Table x
WHERE
	(x.Country, x.State) IN (('US', 'CA'), ('US', 'NY'))

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue3631Table

