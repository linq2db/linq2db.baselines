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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue3631Table

