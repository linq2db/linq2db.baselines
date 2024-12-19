BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue3631Table

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue3631Table
(
	Country String,
	State   String
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue3631Table
(
	Country,
	State
)
VALUES
('US','AL'),
('US','AZ'),
('US','CA'),
('US','FL'),
('US','IN'),
('US','OH'),
('US','NY'),
('CA','AB'),
('CA','ON')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Country,
	x.State
FROM
	Issue3631Table x
WHERE
	(x.Country, x.State) IN (('US', 'CA'), ('US', 'NY'))

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue3631Table

