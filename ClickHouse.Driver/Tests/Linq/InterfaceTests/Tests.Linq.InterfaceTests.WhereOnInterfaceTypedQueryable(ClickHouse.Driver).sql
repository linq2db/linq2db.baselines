-- ClickHouse.Driver ClickHouse
INSERT INTO MappedBackgroundTask
(
	ID,
	DurationID,
	DurationInterval,
	PersonID
)
VALUES
(
	3,
	2,
	4,
	1
)

-- ClickHouse.Driver ClickHouse
SELECT
	task_1.ID,
	task_1.DurationID,
	task_1.DurationInterval,
	task_1.PersonID
FROM
	MappedBackgroundTask task_1
WHERE
	task_1.PersonID = 1

