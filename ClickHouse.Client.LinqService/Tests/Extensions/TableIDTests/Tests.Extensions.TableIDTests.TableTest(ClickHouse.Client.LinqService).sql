﻿BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	concat('*** p ***', '4'),
	'*** p ***',
	'*** Parent ***',
	'*** p_1.p ***'
FROM
	Child c_1
		INNER JOIN (
			SELECT
				p.ParentID as ParentID
			FROM
				Parent p
		) p_1 ON c_1.ParentID = p_1.ParentID
WHERE
	'*** p ***' = '*** Parent ***'

