﻿BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	Coalesce(minOrNull(gr.ParentID), 10)
FROM
	Parent gr

