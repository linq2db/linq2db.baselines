﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1
DECLARE @take Integer(4) -- Int32
SET     @take = 1

SELECT
	t2.ParentID,
	t2.Value1
FROM
	(
		SELECT SKIP @skip FIRST @take
			t1.ParentID,
			t1.Value1
		FROM
			Parent t1
	) t2

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

