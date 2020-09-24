﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE AsyncDataTable
(
	Id Int NOT NULL,

	CONSTRAINT PK_AsyncDataTable PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO AsyncDataTable (Id) VALUES (1)
	INTO AsyncDataTable (Id) VALUES (2)
	INTO AsyncDataTable (Id) VALUES (3)
	INTO AsyncDataTable (Id) VALUES (4)
	INTO AsyncDataTable (Id) VALUES (5)
	INTO AsyncDataTable (Id) VALUES (6)
	INTO AsyncDataTable (Id) VALUES (7)
	INTO AsyncDataTable (Id) VALUES (8)
	INTO AsyncDataTable (Id) VALUES (9)
	INTO AsyncDataTable (Id) VALUES (10)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)
DECLARE @Id Int32
SET     @Id = 2
DECLARE @take Int32
SET     @take = 2

SELECT
	c_1.Id
FROM
	AsyncDataTable c_1
WHERE
	c_1.Id = :Id AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE AsyncDataTable

