﻿BeforeExecute
--  ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TempTable

BeforeExecute
--  ClickHouse.MySql ClickHouse (asynchronously)

CREATE TEMPORARY TABLE TempTable
(
	ID Int32
)
ENGINE = Memory()

BeforeExecute
--  ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO TempTable
(
	ID
)
SELECT
	p.ParentID
FROM
	Parent p

BeforeExecute
--  ClickHouse.MySql ClickHouse (asynchronously)

DROP TABLE IF EXISTS TempTable

BeforeExecute
--  ClickHouse.MySql ClickHouse

DROP TABLE TempTable

