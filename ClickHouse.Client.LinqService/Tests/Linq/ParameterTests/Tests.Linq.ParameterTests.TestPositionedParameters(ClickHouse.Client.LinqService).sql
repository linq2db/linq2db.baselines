BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	((((toInt32(3) * (toInt32(10) - toInt32(2)) / toInt32(3)) * toInt32(2)) * (((((toInt32(3) * (toInt32(10) - toInt32(2)) / toInt32(3)) * toInt32(2)) * (toInt32(10) - toInt32(2)) / ((toInt32(3) * (toInt32(10) - toInt32(2)) / toInt32(3)) * toInt32(2))) * toInt32(2)) - child_1.ChildID) / ((toInt32(3) * (toInt32(10) - toInt32(2)) / toInt32(3)) * toInt32(2))) * child_1.ChildID)
FROM
	Child child_1

