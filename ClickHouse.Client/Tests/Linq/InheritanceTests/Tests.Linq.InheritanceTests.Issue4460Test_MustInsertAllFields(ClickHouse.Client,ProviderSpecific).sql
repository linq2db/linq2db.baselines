﻿BeforeExecute
INSERT ASYNC BULK Issue4460Table(Id, Code, Name, Surname)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Code,
	t1.Id,
	t1.Name,
	t1.Surname
FROM
	Issue4460Table t1

