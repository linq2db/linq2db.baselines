﻿BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	p.ID,
	p.TS
FROM
	ReplacingMergeTreeTable p FINAL

