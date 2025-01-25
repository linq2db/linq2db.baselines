BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO BackgroundTask
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

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	task_1.ID,
	task_1.DurationID,
	task_1.DurationInterval,
	task_1.PersonID
FROM
	BackgroundTask task_1
WHERE
	task_1.PersonID = 1

