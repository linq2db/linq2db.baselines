BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE OrderByDistinctData
(
	Id            Int          NOT NULL,
	DuplicateData VarChar(255)     NULL,
	OrderData1    Int          NOT NULL,
	OrderData2    Int          NOT NULL,

	CONSTRAINT PK_OrderByDistinctData PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.Managed Oracle12

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
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT 
	t.DuplicateData, 
	(
		SELECT 
			Count(*)
		FROM
			OrderByDistinctData s
		WHERE
			(s.DuplicateData IS NULL AND t.DuplicateData IS NULL OR s.DuplicateData = t.DuplicateData)
	)
FROM
	( 
		SELECT 
			t1.Id, 
			t1.DuplicateData
		FROM
			OrderByDistinctData t1
		FETCH NEXT :take ROWS ONLY
	) t
ORDER BY
	t.Id DESC

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE OrderByDistinctData

