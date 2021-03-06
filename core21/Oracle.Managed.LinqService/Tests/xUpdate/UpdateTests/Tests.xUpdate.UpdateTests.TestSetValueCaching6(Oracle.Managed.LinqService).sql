﻿BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE UpdateSetTest
(
	Id     Int     NOT NULL,
	Value1 Raw(16) NOT NULL,
	Value2 Int     NOT NULL,
	Value3 Int     NOT NULL,
	Value4 Raw(16)     NULL,
	Value5 Int         NULL,
	Value6 Int         NULL,

	CONSTRAINT PK_UpdateSetTest PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO UpdateSetTest (Id, Value1, Value2, Value3, Value4, Value5, Value6) VALUES (1,Cast('a57339bd2343d84d9f4fdf9f93e2a627' as raw(16)),10,6,NULL,NULL,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Value6 Int32
SET     @Value6 = 7
DECLARE @id Int32
SET     @id = 1

UPDATE
	UpdateSetTest
SET
	UpdateSetTest.Value6 = :Value6
WHERE
	UpdateSetTest.Id = :id

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	t1.Value6
FROM
	UpdateSetTest t1
WHERE
	t1.Id = :id
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Value6 Int32
SET     @Value6 = 8
DECLARE @id Int32
SET     @id = 1

UPDATE
	UpdateSetTest
SET
	UpdateSetTest.Value6 = :Value6
WHERE
	UpdateSetTest.Id = :id

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	t1.Value6
FROM
	UpdateSetTest t1
WHERE
	t1.Id = :id
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE UpdateSetTest

