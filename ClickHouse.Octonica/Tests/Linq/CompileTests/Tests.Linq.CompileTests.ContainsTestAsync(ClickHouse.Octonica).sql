﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	CASE
		WHEN 1 IN (
			SELECT
				c_1.ParentID
			FROM
				Child c_1
		)
			THEN true
		ELSE false
	END

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	CASE
		WHEN -1 IN (
			SELECT
				c_1.ParentID
			FROM
				Child c_1
		)
			THEN true
		ELSE false
	END

