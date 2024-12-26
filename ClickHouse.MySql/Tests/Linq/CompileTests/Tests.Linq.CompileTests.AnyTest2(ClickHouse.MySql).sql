BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Child c_1
		WHERE
			c_1.ParentID = 1
	)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Child c_1
		WHERE
			c_1.ParentID = -1
	)

