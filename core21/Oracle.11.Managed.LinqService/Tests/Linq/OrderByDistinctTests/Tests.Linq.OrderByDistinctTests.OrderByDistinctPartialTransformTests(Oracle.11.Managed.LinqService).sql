﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE OrderByDistinctData
(
	Id            Int          NOT NULL,
	DuplicateData VarChar(255)     NULL,
	OrderData1    Int          NOT NULL,
	OrderData2    Int          NOT NULL,

	CONSTRAINT PK_OrderByDistinctData PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO OrderByDistinctData (Id, DuplicateData, OrderData1, OrderData2) VALUES (1,'One',1,1)
	INTO OrderByDistinctData (Id, DuplicateData, OrderData1, OrderData2) VALUES (2,'One',1,10)
	INTO OrderByDistinctData (Id, DuplicateData, OrderData1, OrderData2) VALUES (3,'One',2,2)
	INTO OrderByDistinctData (Id, DuplicateData, OrderData1, OrderData2) VALUES (4,'One',3,3)
	INTO OrderByDistinctData (Id, DuplicateData, OrderData1, OrderData2) VALUES (5,'One',4,4)
	INTO OrderByDistinctData (Id, DuplicateData, OrderData1, OrderData2) VALUES (6,'One',5,5)
	INTO OrderByDistinctData (Id, DuplicateData, OrderData1, OrderData2) VALUES (10,'Two',1,1)
	INTO OrderByDistinctData (Id, DuplicateData, OrderData1, OrderData2) VALUES (20,'Two',1,10)
	INTO OrderByDistinctData (Id, DuplicateData, OrderData1, OrderData2) VALUES (30,'Two',2,2)
	INTO OrderByDistinctData (Id, DuplicateData, OrderData1, OrderData2) VALUES (40,'Two',3,3)
	INTO OrderByDistinctData (Id, DuplicateData, OrderData1, OrderData2) VALUES (50,'Two',4,4)
	INTO OrderByDistinctData (Id, DuplicateData, OrderData1, OrderData2) VALUES (60,'Two',5,5)
	INTO OrderByDistinctData (Id, DuplicateData, OrderData1, OrderData2) VALUES (100,'Three',1,1)
	INTO OrderByDistinctData (Id, DuplicateData, OrderData1, OrderData2) VALUES (200,'Three',1,10)
	INTO OrderByDistinctData (Id, DuplicateData, OrderData1, OrderData2) VALUES (300,'Three',2,2)
	INTO OrderByDistinctData (Id, DuplicateData, OrderData1, OrderData2) VALUES (400,'Three',3,3)
	INTO OrderByDistinctData (Id, DuplicateData, OrderData1, OrderData2) VALUES (500,'Three',4,4)
	INTO OrderByDistinctData (Id, DuplicateData, OrderData1, OrderData2) VALUES (600,'Three',5,5)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT 
	t2.DuplicateData, 
	t2.OrderData2
FROM
	( 
		SELECT 
			t1.DuplicateData, 
			t1.OrderData2, 
			ROWNUM as RN
		FROM
			( 
				SELECT 
					x.DuplicateData, 
					x.OrderData2
				FROM
					OrderByDistinctData x
				GROUP BY
					x.DuplicateData,
					x.OrderData2
				ORDER BY
					Max(x.OrderData1),
					x.OrderData2 DESC
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t2
WHERE
	t2.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE OrderByDistinctData

