BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TrimTestTable
(
	ID,
	Data
)
VALUES
(1,'***OOO***')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.ID,
	r.Data
FROM
	TrimTestTable r
ORDER BY
	r.ID

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.ID,
	r.Data
FROM
	TrimTestTable r
ORDER BY
	r.ID

